//
//  CircleEffectLabel.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/22/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class CircleEffectLabel: UILabel {
    
    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.grayColor().CGColor
        self.layer.masksToBounds = true
    }

}
