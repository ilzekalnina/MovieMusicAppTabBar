//
//  MusicDetailViewController.swift
//  MovieMusicAppTabBar
//
//  Created by Kisacka on 07/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class MusicDetailViewController: UIViewController {

    @IBOutlet weak var musicImageView: UIImageView!
    @IBOutlet weak var musicLabel: UILabel!
    
    var musicTrack: MusicTrack!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if musicTrack != nil {
            musicImageView.image = UIImage(named: musicTrack.albumCover)
            musicLabel.text = "\(musicTrack.artist) \n (\(musicTrack.album))"
            musicLabel.numberOfLines = 0
        }

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
