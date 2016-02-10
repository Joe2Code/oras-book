//
//  ShadowClass.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/1/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class ShadowClass: UIView {

    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: shadow, green: shadow, blue: shadow, alpha: 0.8).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
        
    }
}

class ShadowGreen: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: 178.0 / 255.0, green: 235.0 / 255.0, blue: 242.0 / 255.0, alpha: 3.0).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}