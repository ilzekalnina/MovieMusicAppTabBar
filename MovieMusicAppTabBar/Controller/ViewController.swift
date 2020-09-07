//
//  ViewController.swift
//  MovieMusicAppTabBar
//
//  Created by Kisacka on 07/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movies = Movie.createMovie()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }
    
    
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        tableView.isEditing = !tableView.isEditing
    }
    
    func configureCell(cell: MovieTableViewCell, for indexPath: IndexPath){
        let movie = movies[indexPath.row]
        
        cell.movieTitleLabel.text = movie.title
        cell.movieYearLabel.text = movie.year
        cell.movieImageView.image = UIImage(named: movie.poster)
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //to return reusable tableViewCell, first we need to create it
        //depending on screen, loaded are specific count, and then, when scrolling, the first will be gone from screen and memory, the last one will come up to memory
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        
        configureCell(cell: cell, for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let alert = UIAlertController(title: "Are you sure you want to delete?", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
            alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: { (_) in
                self.movies.remove(at: indexPath.row)
                
                UIView.transition(with: tableView, duration: 1.0, options: .transitionCrossDissolve, animations: {
                    self.tableView.reloadData()
            }, completion: nil)
        }))
            self.present(alert, animated: true )
            
        }
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentMovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentMovie, at: to.row)
    }
    
    
    
      // MARK: - Navigation

      // In a storyboard-based application, you will often want to do a little preparation before navigation
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let indexPath = tableView.indexPathForSelectedRow{
            
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
            print(indexPath.row)
            let movieDetailVC = segue.destination as! MovieDetailViewController
            movieDetailVC.movie = movies[indexPath.row]
        }
      }
      
    
}

