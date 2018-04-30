//
//  ViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-04-29.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Weak varibles made so I can round the corners of each buttons being used
    @IBOutlet weak var servicesButton: UIButton!
    @IBOutlet weak var portfolioButton: UIButton!
    @IBOutlet weak var aboutUsButton: UIButton!
    @IBOutlet weak var contactUsButton: UIButton!
    @IBOutlet weak var socialLinksButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        Once the application has loaded, load all of the buttons and make the corners rounded
        
        servicesButton.layer.cornerRadius = 5
        portfolioButton.layer.cornerRadius = 5
        aboutUsButton.layer.cornerRadius = 5
        contactUsButton.layer.cornerRadius = 5
        socialLinksButton.layer.cornerRadius = 5


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Actions for our Services Button
    @IBAction func servicesButton(_ sender: Any) {
        //        When the button is clicked, the user is taken to this tab bar
        self.tabBarController?.selectedIndex = 2
    }
    
    
    // Actions for our Services Button
    @IBAction func portfolioButton(_ sender: Any) {
        //        When the button is clicked, the user is taken to this tab bar
        self.tabBarController?.selectedIndex = 3
    }
    
    
    // Actions for our Services Button
    @IBAction func aboutUsButton(_ sender: Any) {
        //        When the button is clicked, the user is taken to this tab bar
        self.tabBarController?.selectedIndex = 1
    }
    
    
    // Actions for our Services Button
    @IBAction func contactUsButton(_ sender: Any) {
        //        When the button is clicked, the user is taken to this tab bar
        self.tabBarController?.selectedIndex = 4
    }
}

