//
//  SpringBorderButton.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/22/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class SpringBorderButton: UIButton {

    override func awakeFromNib() {
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 3
        self.layer.borderColor = silverColor().CGColor
    }
}
