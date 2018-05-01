//
//  ServicesTableTableViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-01.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class ServicesTableTableViewController: UITableViewController {
    
    // Create an array for the view to load some various information
    
    var titleList = ["Casement Windows and Awnings", "Bay and Bow Windows", "Single Hung and Single Slide Windows", "Double Hung and Double Slide Windows", "Tilt And Turn Windows", "Shaped and Picture Windows", "Front Entry Doors", "Sliding Patio Doors", "Lift Slide Doors", "French Doors and French Garden Doors", "Bi Folding Doors", "Tilt and Slide Doors"  ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    tableView.backgroundView = UIImageView(image: UIImage(named: "Background Image"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // Adding in the amount of sections we want
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        // Whenever the applications built, add the amount of cells for the amount of services that we are having
        return titleList.count
    }

    // We want to reanable this code, so that we can configure the different services that we will be using
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Allow this to be linked to the class that is controlling it
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ServicesTableViewCell
        
        // Populate the rows based on the services array that we have, and add this many rows thus the first cell, is the first entry in the array and so this will continue ... Configure the cell ...

        cell.cellTitle.text = titleList[indexPath.row]


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
     
     
    // MARK: - Navigation

  //  In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // populate the data that we have create, once this is done load the image based on the title, as well as load the text as per the item we are looking for in array
        
        // Population settings, we have also named the linking contact between the page, and the information deplaier the "Seuge", we have called this showDetail
        if (segue.identifier == "showDetail") {
            
            // allocate the text and display within a variible
            let dvc = segue.destination as! ServicesViewController
            if let indexPath = self.tableView.indexPathForSelectedRow {
                dvc.sentData = titleList[indexPath.row] as String 
            }
            
            
        }
        
        
        
        
    }
}
