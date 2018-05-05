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
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var sendButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.layer.cornerRadius = 5
        self.navigationItem.title = "Email Us Today"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text  == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    
    
    
    @IBAction func sendEmail(_ sender: Any) {
        
        let mc : MFMailComposeViewController = MFMailComposeViewController()
        
        mc.mailComposeDelegate = self
        
        let recipients = ["imranjuma49@gmail.com"]
        
        mc.setToRecipients(recipients)
        mc.setSubject(nameField.text! + " - Window Quote")
        mc.setMessageBody("""
                            Name: \(nameField.text!)
                            Email: \(emailField.text!)
                            Messgae: \(messageField.text!)
                            """, isHTML: false)
        
        self.present(mc, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        self.resignFirstResponder()
    }
}
