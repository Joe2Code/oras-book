//
//  CardViewTableViewCell.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/8/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class CardViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
