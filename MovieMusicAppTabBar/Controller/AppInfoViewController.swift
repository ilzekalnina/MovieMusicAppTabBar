//
//  AppInfoViewController.swift
//  MovieMusicAppTabBar
//
//  Created by Kisacka on 07/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class AppInfoViewController: UIViewController {

    @IBOutlet weak var appInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appInfoLabel.text = "This App shows you detailed info about Movies and Artists and their albums. \n \n This app is made by \nIlze Kalnina, \ncomplete beginner in Swift :)"
        
        

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
