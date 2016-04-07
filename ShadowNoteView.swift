//
//  ShadowNoteView.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/4/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class ShadowNoteView: UIView {

    override func awakeFromNib() {
        // layer.cornerRadius = 0.0
        layer.shadowColor = navyBlue().CGColor
        layer.shadowOpacity = 10.0
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSizeMake(0.0, 0.0)
    }

}
