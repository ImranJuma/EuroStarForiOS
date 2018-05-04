//
//  ContacUsViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-04.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit
import MapKit

class ContacUsViewController: UIViewController {
    
    // All Feautures for the following buttons within the class
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var directionsButton: UIButton!
    @IBOutlet weak var callUsButton: UIButton!
    @IBOutlet weak var emailUsButton: UIButton!
    @IBOutlet weak var socialMediaLinksButton: UIButton!
    
    // Varible for the MapView
    var latitude = 45.331727 // Latitude of Address
    var longitude = -75.7234219 // Longitude of Adress
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Changing Corener Radious for all the buttons that we have used within the application
        directionsButton.layer.cornerRadius = 5
        callUsButton.layer.cornerRadius = 5
        emailUsButton.layer.cornerRadius = 5
        socialMediaLinksButton.layer.cornerRadius = 5
        
        //Preload zoom on MapView
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
        //Setting Pin Location
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let pinAnimation = MKPointAnnotation()
        pinAnimation.coordinate = pinLocation
        pinAnimation.title = "EuroStar Ottawa"
        pinAnimation.subtitle = "1884 Merivale Rd Unit #3, Nepean, ON K2G 1E6"
        self.mapView.addAnnotation(pinAnimation)

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
    
    //Allowing the user to get to us using applemaps
    @IBAction func directionsToUs(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!, options: [:], completionHandler: nil)
    }
    
    @IBAction func callUsToday(_ sender: Any) {
        UIApplication.shared.open(URL(string: "tel://(613)-731-6224")!, options: [:], completionHandler: nil)
    }
    
    
    
    
    
    
}
