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
    
    var books:[DummyData] = sampleData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.cornerRadius = 5
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as! MainBookTableViewCell
        
        let book = books[indexPath.row] as DummyData
        cell.bookTitle?.text = book.bookTitle
        cell.numberOfNotes?.text = book.noteNumber?.description
        // cell.totalTime?.text = book.totalTimeRead
        
        return cell
    }

}
