//
//  MainPageViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/22/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var featuresView: UIView!
    @IBAction func startReadingButton(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featuresView.transform = CGAffineTransformMakeTranslation(0, 700)
        UIView.animateWithDuration(1, delay: 0.7, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.2, options: [], animations: {
            self.featuresView.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
