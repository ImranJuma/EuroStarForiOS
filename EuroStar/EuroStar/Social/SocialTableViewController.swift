//
//  SocialTableViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-08.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class SocialTableViewController: UITableViewController {
    
    
    //The Two Array's that we will use to controll the different titles, and headings for the application
    var imageList = ["Facebook_Image","Twitter_Image","Youtube_Image","GooglePlus_Image","LinkedIn_Image","Website_Image"]
    var titleList = ["Facebook","Twitter","Youtube","Google+","LinkedIn","EuroStar Website"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "Background Image"))
        self.navigationItem.title = "Social Links"


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titleList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SocialTableViewCell

        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
        cell.CellTitle.text = titleList[indexPath.row]
        
        

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Preparing Sauge for when we are switching pages
        
        if (segue.identifier == "showDetail") {
            
            let dvc = segue.destination as! SocialViewController
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                
                dvc.sentData = titleList[indexPath.row] as String
            }
        }
    }
}
