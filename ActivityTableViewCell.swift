//
//  ActivityTableViewCell.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/2/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var totalNotes: CircleEffectLabel!
    @IBOutlet weak var totalPagesRead: CircleEffectLabel!
    @IBOutlet weak var totalHours: CircleEffectLabel!
    @IBOutlet weak var totalMinutes: CircleEffectLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
