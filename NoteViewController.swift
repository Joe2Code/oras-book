//
//  NoteViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/28/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    
    @IBAction func saveButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var reviewNoteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        reviewNoteTextView.text = "•"
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
