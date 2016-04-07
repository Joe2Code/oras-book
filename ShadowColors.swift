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
        layer.cornerRadius = 10.0
        layer.shadowColor = UIColor(red: shadow, green: shadow, blue: shadow, alpha: 0.8).CGColor
        layer.shadowOpacity = 10.0
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSizeMake(0.0, 0.0)
        
    }
}

