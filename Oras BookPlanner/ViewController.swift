//
//  ViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 1/30/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func login(sender: AnyObject) {
    }
    
    @IBAction func googleLogin(sender: AnyObject) {
    }
    
    @IBAction func facebookLogin(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.transform = CGAffineTransformMakeTranslation(0, 700)
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: [], animations: {
            self.mainView.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        loginView.transform = CGAffineTransformMakeTranslation(0, 700)
        UIView.animateWithDuration(1, delay: 0.7, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.2, options: [], animations: {
            self.loginView.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

