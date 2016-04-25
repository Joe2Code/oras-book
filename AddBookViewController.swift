//
//  AddBookViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 3/25/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var bookData: BoundBook?

    @IBOutlet weak var bookCategory: UIPickerView!
    
    @IBAction func addBookButtonPressed(sender: AnyObject) {
            }
    
    @IBOutlet weak var nameOfBook: UITextField!
    @IBOutlet weak var author: UITextField!
    @IBOutlet weak var bookNotesStart: UITextView!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("1")
        if (segue.identifier == "saveAddBookData") {
            print("2")
            bookData = BoundBook(bookTitle: nameOfBook.text ,bookAuthor: author.text, bookCategory: pickerDataSource.description, noteNumber: 0, bookPagesRead: 0, bookHoursRead: 0, bookMinutesRead: 0, bookSecondsRead: 0)
            BookData.append(bookData!)
            print(BookData.count)
            print("Test")
           // var vC = segue.destinationViewController as? MainBookViewController
            // var addBookData : DummyData
           // addBookData =
           // vC?.books = addBookData.bookTitle
            // vC!.books = nameOfBook.text
            // DummyData(bookTitle: nameOfBook.text, noteNumber: 0, totalTimeRead: 0)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bookCategory.dataSource = self
        self.bookCategory.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerViewTest(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
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
