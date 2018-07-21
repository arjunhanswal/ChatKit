//
//  TimeLineCollectionViewCell.swift
//  DemoApp
//
//  Created by Arjun on 7/20/18.
//  Copyright © 2018 Window. All rights reserved.
//

import UIKit

class TimeLineUITableViewCell: UITableViewCell {
    @IBOutlet weak var imgFailMessage: UIImageView!
    
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var view: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        imgUser.clipsToBounds = true
        imgFailMessage.isHidden = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
