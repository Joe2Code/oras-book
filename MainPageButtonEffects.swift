//
//  MainPageButtonEffects.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 4/12/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class MainPageButtonEffects: UIButton {
    
    override func awakeFromNib() {
        self.layer.borderColor = lightGrey().CGColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 5
    }

}
