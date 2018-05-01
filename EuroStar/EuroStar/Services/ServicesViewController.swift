//
//  ServicesViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-01.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailDescription: UITextView!
    
    var sentData:String! 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Load the image, within the view, for the item that we have in selection based on the other peramiters in the ServicesTableViewCell class created
        self.navigationItem.title = sentData
        
        // For the services in count, this will load the following information about the service, as well as the correct image for what we are doing
        // We will repeat this for all of the different services that we have below, so the following code is just copied and pasted
        
//        For Service 1 For Service 5 ** Need to come back to this one, and decide how you want to deisgn it
        if self.navigationItem.title == "Casement Windows and Awnings" {
            detailImage.image = UIImage(named: "Service_Image_1")
            detailDescription.text = " * Casement windows provide maximum airflow \n\n * Superior airtight seal gives optimal weatherproofing and efficiency \n\n * High security with multiple point locking system and strong stainless steel hinges \n\n * Removable screen and 90 degree opening to allow for easy cleaning from inside your house 7/8″ or 1 3/8″ insulating glass with low-E and argon standard \n\n * Tape glazing and flexible seal protect against leaks and provide additional strength \n\n * Clean appearance fits with all architectural styles"
        }
        
//        For Service 2 ** Need to come back to this one, and decide how you want to deisgn it
        
        if self.navigationItem.title == "Bay and Bow Windows" {
            detailImage.image = UIImage(named: "Service_Image_2")
            detailDescription.text = " With no venting capabilities, this option provides the best seal and the greatest degree of energy efficiency. The vinyl construction offers you improved insulation over the aluminum frames that exists in many homes, and will help to eliminate drafts and leaking. \n\n You will also notice a decrease in your energy costs as a result of our two key thermal features: argon gas and low E glass. \n\n Argon gas is slower moving than oxygen, and when placed between the panes allows for less temperature transfer, preventing the loss of heat in the winter, or cooling in the summer. \n\n Low E works to reflect the hot rays of the sun out during the warm months, and reflects the warm air from your furnace back into your home in the cold months."
        }
        
//        For Service 3 ** Need to come back to this one, and decide how you want to deisgn it
        
        if self.navigationItem.title == "Single Hung and Single Slide Windows" {
            detailImage.image = UIImage(named: "Service_Image_3")
            detailDescription.text = "* Greater energy efficiency than a double hung style \n\n *Clean, *contemporary appearance \n\n * Screen removable from the inside \n\n * Interlocking panes provides protection against leaks and drafts"
        }
        
//        For Service 4 ** Need to come back to this one, and decide how you want to deisgn it
        
        if self.navigationItem.title == "Double Hung and Double Slide Windows" {
            detailImage.image = UIImage(named: "Service_Image_4")
            detailDescription.text = "* Our leading edge products provide you with many benefits: \n\n * Unmatched strength and insulation \n\n * Sleek latches for clean interior lines \n\n * Tape glazing and sealing systems protect against leaks and drafts \n\n * Top lock for increased security \n\n * Easy to open and close \n\n * Increased energy efficiency with superior 7/8 inch insulating glass with Argon"
        }
        
//        For Service 5 ** Need to come back to this one, and decide how you want to deisgn it
        
        if self.navigationItem.title == "Tilt And Turn Windows" {
            detailImage.image = UIImage(named: "Service_Image_5")
            detailDescription.text = "TOP 3 REASONS TO CHOOSE PICTURE WINDOWS \n\n * With no venting capabilities, this option provides a great degree of energy efficiency. As with all of our products, we offer many features that enhance efficiency and help to save you energy. \n\n ** Argon gas between panes to slow temperature transfer and low E coating to keep UV rays out and furnace heat in. \n\n * Free upgrade to a triple glaze pane for better weatherproofing and longevity, plus vinyl frames provide a thermal advantage over aluminum frames. \n\n PICTURE VS BAY WINDOWS *Bay style fixtures are often thought of by consumers as a set of three, usually one large and two smaller, that are frequently used on the front of new homes. \n\n * A picture fixture stands alone, or can refer to the large pane in the centre of a bay setup, that is fixed and allows no venting at all."
        }
        
//        For Service 6 ** Need to finish this one
        
        if self.navigationItem.title == "Shaped and Picture Windows" {
            detailImage.image = UIImage(named: "Service_Image_6")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 7
        
        if self.navigationItem.title == "Front Entry Doors" {
            detailImage.image = UIImage(named: "Service_Image_7")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 8
        
        if self.navigationItem.title == "Sliding Patio Doors" {
            detailImage.image = UIImage(named: "Service_Image_8")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 9
        
        if self.navigationItem.title == "Lift Slide Doors" {
            detailImage.image = UIImage(named: "Service_Image_9")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 10
        
        if self.navigationItem.title == "French Doors and French Garden Doors" {
            detailImage.image = UIImage(named: "Service_Image_10")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 11
        
        if self.navigationItem.title == "Bi Folding Doors" {
            detailImage.image = UIImage(named: "Service_Image_11")
            detailDescription.text = "This Is Service 1"
        }
        
//        For Service 12
        
        if self.navigationItem.title == "Tilt and Slide Doors" {
            detailImage.image = UIImage(named: "Service_Image_12")
            detailDescription.text = "This Is Service 1"
        }
        

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

}
