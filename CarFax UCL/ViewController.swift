//
//  ViewController.swift
//  CarFax UCL
//
//  Created by Derrick W on 10/5/19.
//  Copyright © 2019 12Techs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UISearchBarDelegate {
    @IBOutlet var backgroundViewOne: UIImageView!
    @IBOutlet var searchBar: UISearchBar!
    
    //variable for random background
    var backgroundPicChooser: Int!
    //instance of JsonDownloader class
    var downloadJson = JsonDownloader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSettings()
        downloadJson.downloadJson()
        // Do any additional setup after loading the view.
    }

    


    func viewSettings() {
 
        //--adjust the cornerRadius of the search bar
        searchBar.layer.masksToBounds = true
        searchBar.layer.cornerRadius = 10
        //--
        
        //--adding image to background
        backgroundViewOne.image = #imageLiteral(resourceName: "4pic4")
        
        //backgroundPic Generator
        backgroundPicChooser = Int(arc4random_uniform(10))
        
        
        switch backgroundPicChooser {
        case 0: backgroundViewOne.image = #imageLiteral(resourceName: "1pic1")
        case 1: backgroundViewOne.image = #imageLiteral(resourceName: "2pic2")
        case 2: backgroundViewOne.image = #imageLiteral(resourceName: "3pic3")
        case 3: backgroundViewOne.image = #imageLiteral(resourceName: "4pic4")
        case 4: backgroundViewOne.image = #imageLiteral(resourceName: "5pic5")
        case 5: backgroundViewOne.image = #imageLiteral(resourceName: "6pic6")
        case 6: backgroundViewOne.image = #imageLiteral(resourceName: "7pic7")
        case 7: backgroundViewOne.image = #imageLiteral(resourceName: "8pic8")
        case 8: backgroundViewOne.image = #imageLiteral(resourceName: "9pic9")
        case 9: backgroundViewOne.image = #imageLiteral(resourceName: "2pic2")
        default: backgroundViewOne.image = #imageLiteral(resourceName: "4pic4")
        }
   
    }
    
    
    
    
}

