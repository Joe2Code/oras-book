//
//  ShadowLabel.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/23/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class ShadowLabel: UILabel {

    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: shadow, green: shadow, blue: shadow, alpha: 0.8).CGColor
        layer.shadowOpacity = 1.8
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}

class ShadowGreenLabel: UILabel {
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: 178.0 / 255.0, green: 235.0 / 255.0, blue: 242.0 / 255.0, alpha: 3.0).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}

class ShadowWhiteLabel: UILabel {
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: 255.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 0.5).CGColor
        layer.shadowOpacity = 1.8
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}