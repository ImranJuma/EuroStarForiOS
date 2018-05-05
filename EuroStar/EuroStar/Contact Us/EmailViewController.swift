//
//  EmailViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-05.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate {
    
    //OutletSection
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var messageButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageButton.layer.cornerRadius = 5
        self.navigationItem.title = "Email Us"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissKeybaord(_ sender: Any) {
        
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        
        return true
        
    }
    
    @IBAction func sendEmail(_ sender: Any) {
        
        let mc : MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        // Who we are sending the email to, this can be further changed letter
        let recipients = ["imranjuma49@gmail.com"]
        mc.setToRecipients(recipients)
       
        // How the email will be presented when the user sends the messgae
        mc.setSubject(nameField.text! + " - Window Quote")
        mc.setMessageBody("""
                                Hello My Name Is: \(nameField.text!)
                                I can Be Reached At: \(emailField.text!)
                                Here Is What I Am Looking For: \(messageField.text!)
                            """, isHTML: false)
        
        self.present(mc, animated:true, completion: nil)
    }
    
    //Allowing the text to go away, when we are done sending the message
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        self.resignFirstResponder()
    }
}
