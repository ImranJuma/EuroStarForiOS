//
//  SocialTableViewCell.swift
//  EuroStar
//
//  Created by Imran Juma on 2018-05-08.
//  Copyright © 2018 Imran Juma. All rights reserved.
//

import UIKit

class SocialTableViewCell: UITableViewCell {
    
    //Cell Information Outlet's
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var CellTitle: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
