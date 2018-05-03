//
//  PortfolioCollectionViewController.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-03.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

//Adding FlowDelate will allow us to resize based on the users device
class PortfolioCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    //Here using strings we will use this to populate all the different images to load within the collection view
    var imageList = ["Collection_View_Image_1", "Collection_View_Image_2", "Collection_View_Image_3", "Collection_View_Image_4", "Collection_View_Image_5", "Collection_View_Image_1", "Collection_View_Image_2", "Collection_View_Image_3", "Collection_View_Image_4", "Collection_View_Image_5", "Collection_View_Image_1", "Collection_View_Image_2", "Collection_View_Image_3", "Collection_View_Image_4", "Collection_View_Image_5"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        collectionView?.backgroundView = UIImageView(image: UIImage(named: "Background Image"))

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 // This was chnaged to the value of 1, this is based off of the number of cells that we will be working with for the present time
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count // This will deisplay how many items to show the user, however we should modify this based on the amount of items that we have in our string, so based that number from here to be imageList.count so whnever the project is built is will built this and count to automatically update
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Here we will modify this similar to how we modifyed the table view
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PortfolioCollectionViewCell
    
        // Configure the cell
        
        cell.cellImage.image = UIImage(named: imageList[indexPath.row])
    
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        // The bounds of the collection view will now be based upon the the size of the users device
        let screenSize : CGRect = UIScreen.main.bounds
        
        var widthCell = 0
        var heightCell = 0
        
        //Refrence the screen size to a specific measurement, we will base this off of the iPhone SE - iPhone 8
        
        
        // This will be for iPhone SE
        if screenSize.width == 320 {
            
            widthCell = 130
            heightCell = 130
            
        }
        
        //This will be for iPhone 6-7-8 NOT PLUS Sizes, These will be added later on
        if screenSize.width == 375 {
            
            widthCell = 160
            heightCell = 160
            
        }
        
        //This will be for iPhone 6-6S-7-8 Plus Sizes, These will be added later on
        if screenSize.width == 414 {
            
            widthCell = 180
            heightCell = 180
            
        }
        
        //This will be for iPhone 6-6S-7-8 Plus Sizes, These will be added later on
        if screenSize.width == 768 {
            
            widthCell = 230
            heightCell = 230
            
        }
        
        //This will be for iPhone 6-6S-7-8 Plus Sizes, These will be added later on
        if screenSize.width == 834 {
            
            widthCell = 250
            heightCell = 250
            
        }
        
        //This will be for iPhone 6-6S-7-8 Plus Sizes, These will be added later on
        if screenSize.width == 1024 {
            
            widthCell = 310
            heightCell = 310
            
        }
        // This same method can be done for iPad as-well
        
        
        
        return CGSize(width: widthCell, height: heightCell) // These varibles come from the different devices we tested on, this means that no matter what device we use, the user will be able to read the size needed
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
