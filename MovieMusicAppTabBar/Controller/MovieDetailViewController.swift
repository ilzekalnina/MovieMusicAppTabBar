//
//  MovieDetailViewController.swift
//  MovieMusicAppTabBar
//
//  Created by Kisacka on 07/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            movieImageView.image = UIImage(named: movie.poster)
            movieLabel.text = "\(movie.title) \n (\(movie.year))"
            movieLabel.numberOfLines = 0
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
