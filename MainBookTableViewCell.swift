//
//  MainBookTableViewCell.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/1/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class MainBookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var numberOfNotes: UILabel!
    @IBOutlet weak var totalTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
