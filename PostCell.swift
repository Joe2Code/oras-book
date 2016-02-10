//
//  PostCell.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/5/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var bookImage: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func drawRect(rect: CGRect) {
        bookImage.layer.cornerRadius = bookImage.frame.size.width / 2
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
