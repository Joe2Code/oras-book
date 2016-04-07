//
//  TimerCornerView.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/4/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class TimerCornerView: UIView {

    override func awakeFromNib() {
        self.layer.borderColor = navyBlue().CGColor
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 3
    }
}
