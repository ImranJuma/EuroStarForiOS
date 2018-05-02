//
//  aboutUsViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-02.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class aboutUsViewController: UIViewController {
    
    @IBOutlet weak var contactUsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Allow the corners of the button to be rounded for when we are loading the application
        contactUsButton.layer.cornerRadius = 5
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func contactUsButton(_ sender: Any) {
        
        // When the contact us button is hit, we will be then sent to the contact us section where the uder can contact the user
        self.tabBarController?.selectedIndex = 4
        
        
    }
    
}
