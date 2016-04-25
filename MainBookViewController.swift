//
//  MainBookViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/3/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class MainBookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func editButton(sender: AnyObject) {
        tableView.setEditing(!tableView.editing, animated: true)
    }
    
    @IBAction func saveAddBookData(segue: UIStoryboardSegue) {
        print("3")
        if let addBookViewContoller = segue.sourceViewController as? AddBookViewController {
            print("4")
            if let bookData = addBookViewContoller.bookData {
                books.append(bookData)
                print("Added to struct")
                
//                let indexPath = NSIndexPath(forRow: books.count, inSection: 1)
//                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//                print("Added to indexPath")
            }
            print("5")
        }

    }

//    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
//        if let addBookViewContoller = segue.sourceViewController as? AddBookViewController {
//            
//            if let bookData = addBookViewContoller.bookData {
//                books.append(bookData)
//                
//                let indexPath = NSIndexPath(forRow: 0, inSection: 0)
//                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
//            }
//        }
//    }
//    
    var books: [BoundBook] = BookData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.cornerRadius = 5
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.self.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! MainBookTableViewCell
        
        let book = books[indexPath.row] as BoundBook
        
        cell.bookTitle?.text = book.bookTitle
        cell.numberOfNotes?.text = book.noteNumber.description
        cell.totalTime?.text = "\(book.bookHoursRead):\(book.bookMinutesRead):\(book.bookSecondsRead)"
        // cell.bookTitle?.text = book.bookTitle
        // cell.numberOfNotes?.text = book.noteNumber.description
        // cell.totalTime?.text = book.totalTimeRead
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            books.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
}
