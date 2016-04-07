//
//  AddBookViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/25/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var bookCategory: UIPickerView!
    
    @IBOutlet weak var addBookButton: UIBarButtonItem!
    @IBOutlet weak var nameOfBook: UITextField!
    @IBOutlet weak var author: UITextField!
    @IBOutlet weak var startingPage: UITextField!
    @IBOutlet weak var endingPageExpected: UITextField!
    @IBOutlet weak var hoursExpected: UITextField!
    @IBOutlet weak var minutesExpected: UITextField!
    @IBOutlet weak var bookNotesStart: UITextView!
    
    
    var pickerDataSource = ["Pick a Reading Category", "Casual Reading", "Academic", "Coffee Reading", "Group Reading", "Religious", "Non-Fiction", "Fiction", "Work Reading", "Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookCategory.dataSource = self
        self.bookCategory.delegate = self
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
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
