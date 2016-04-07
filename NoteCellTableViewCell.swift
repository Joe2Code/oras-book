//
//  NoteCellTableViewCell.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/2/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class NoteCellTableViewCell: UITableViewCell {

    @IBOutlet weak var noteTitle: UILabel!
    @IBOutlet weak var pagesPerNote: UILabel!
    @IBOutlet weak var hoursPerNote: UILabel!
    @IBOutlet weak var nimutesPerNote: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
