//
//  AddNoteViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/28/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {

    
    @IBAction func startBarButtonItem(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var recordTimeSwitch: UISwitch!
    
    @IBOutlet weak var addNotesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
