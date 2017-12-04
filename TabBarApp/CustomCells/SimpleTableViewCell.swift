//
//  SimpleTableViewCell.swift
//  TabBarApp
//
//  Created by Chandra Rao on 03/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
