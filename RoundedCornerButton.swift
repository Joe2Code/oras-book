//
//  RoundedCornerButton.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/27/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class RoundedCornerButton: UIButton {

    override func awakeFromNib() {
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 3
        self.layer.borderColor = silverColor().CGColor
    }
}

class TimerButtonEffects: UIButton {
    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.blackColor().CGColor
    }
}