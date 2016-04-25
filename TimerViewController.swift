//
//  TimerViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/14/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    var playCounter = 0
    var stopCounter = 0
    var running = false
    
    var timer = NSTimer()
    var seconds = 0
    var count = 0
    

    // IBOutlets
    // Timer Label Outlets
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var buttonTogggleFifteenAdd: UIButton!
    @IBOutlet weak var buttonToggleThirtyEdit: UIButton!
    
    @IBOutlet weak var stopResetButton: RoundedCornerButton!
    @IBOutlet weak var startSaveButton: RoundedCornerButton!
    
    @IBAction func categorySelect(sender: AnyObject) {
    }
    
    @IBAction func saveTime(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func unwindStartNoteToVC(segue: UIStoryboardSegue) {
    }
    
    func alterButtons() {
            buttonTogggleFifteenAdd.setTitle("Add New\r Note", forState: .Normal)
            buttonTogggleFifteenAdd.titleLabel?.textAlignment = NSTextAlignment.Center
            buttonToggleThirtyEdit.setTitle("Edit\r Note", forState: .Normal)
            buttonToggleThirtyEdit.titleLabel?.textAlignment = NSTextAlignment.Center
    }

    func revertButtons() {
            buttonTogggleFifteenAdd.setTitle("+15", forState: .Normal)
            buttonToggleThirtyEdit.setTitle("+30", forState: .Normal)
        }
    
    func secondsAddFifteen() {
        seconds += 15
    }
    
    func secondsAddThirty() {
        seconds += 30
    }
    
    func startTimer() {
        seconds++
        if seconds < 10 {
            secondsLabel.text = "0\(seconds)"
        } else {
            secondsLabel.text = "\(seconds)"
        }
    }
    
    func play() {
        self.startSaveButton.setTitle("Pause", forState: .Normal)
        UIButton.animateWithDuration(1.5,
            delay: 0,
            options: UIViewAnimationOptions.CurveLinear,
            animations: {
                self.stopResetButton.alpha = 1
            }, completion: nil)
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "startTimer", userInfo: nil, repeats: true)
        startTimer()
        return
    }
    
    func pause() {
        if playCounter == 1 {
            startSaveButton.setTitle("Play", forState: .Normal)
            playCounter == 0
        }
    }
    
    func stopTimer() {
        timer.invalidate()
        /*    UIButton.animateWithDuration(0.6, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: .CurveLinear , animations: {
                self.stopResetButton.center.y += 100
                }, completion: nil)
*/
            stopResetButton.setTitle("Reset", forState: .Normal)
        return alterButtons()
        
        }
    
    func resetTimer() {
        if stopResetButton.titleLabel == "Reset" {
            seconds = 0
            startSaveButton.setTitle("Play", forState: .Normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        stopResetButton.alpha = 0
        startSaveButton.addTarget(self, action: "play", forControlEvents: .TouchUpInside)
        startSaveButton.addTarget(self, action: "pause", forControlEvents: .TouchUpInside)
        stopResetButton.addTarget(self, action: "stopTimer", forControlEvents: .TouchUpInside)
        stopResetButton.addTarget(self, action: "resetTimer", forControlEvents: .TouchUpInside)
        buttonTogggleFifteenAdd.addTarget(self, action: "secondsAddFifteen", forControlEvents: .TouchUpInside)
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
