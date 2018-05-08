//
//  WebViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-08.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class SocialViewController: UIViewController, UIWebViewDelegate {
    
    //Outlet's for the webview
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var sentData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = sentData
        
        // Load Facebook WebView
        
        
        
        if navigationItem.title == "Facebook" {
         
         print ("Facebook Button Pressed")
            
        }
            
            /*
            
            let url = NSURL(string: "http://www.facebook.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
         
         */
        
       
        // Load Twitter WebView
        if navigationItem.title == "Twitter" {
         
         print ("Twitter Button Pressed")
         
         }
        
        /*
            
            let url = NSURL(string: "http://www.Twitter.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
         
         */
        
        // Load Google Plus WebView
        if navigationItem.title == "Google+" {
         
         print ("Google+ Button Pressed")
         
         }
        
        /*
            
            let url = NSURL(string: "http://GooglePlus.Com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
         
         */
        
        // Load LinkedIn WebView
        if navigationItem.title == "LinkedIn" {
         
         print ("LinkedIn Button Pressed")
         
         }
        
        /*
            
            let url = NSURL(string: "http://www.LinkedIn.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
         
         */
        
        // Load YouTube WebView
        if navigationItem.title == "YouTube" {
         
         print ("YouTube Button Pressed")
         
         }
        
        /*
            
            let url = NSURL(string: "http://www.YouTube.com")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
         
         */
        
        // Load Website WebView
        if navigationItem.title == "EuroStar Website" {
         
         print ("Website Button Pressed")
         
         }
        
        /*
            
            let url = NSURL(string: "https://www.eurostarwindows.ca")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
 
  */
        
    }
 


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // When loading the webpage, start the activity indicator movement
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        activityIndicator.startAnimating()
    }
    
    // When loading the webpage, stop the activity indicator movement
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activityIndicator.stopAnimating()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
