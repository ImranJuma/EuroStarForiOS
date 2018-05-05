//
//  EmailViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-05.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit
class EmailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
}
