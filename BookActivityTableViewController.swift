//
//  BookActivityTableViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/10/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class BookActivityTableViewController: UITableViewController {

    @IBOutlet var activityTableView: UITableView!
    
    @IBAction func unwindAddNoteToVC(segue: UIStoryboardSegue) {
    }
    @IBAction func unwindSettingsToVC(segue: UIStoryboardSegue) {
    }
    
    @IBAction func unwindNoteToVC(segue: UIStoryboardSegue) {
    }
    @IBAction func unwindTimerSave(segue: UIStoryboardSegue) {
        
    }

        
    override func viewDidLoad() {
        super.viewDidLoad()
        activityTableView.delegate = self
        activityTableView.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1 // activityCell return 3, noteCell return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3 // activityCell return 1, noteCell return noteCell.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        
        if index == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("activityCell", forIndexPath: indexPath) as! ActivityTableViewCell
            self.activityTableView.rowHeight = 240.0
            cell.userInteractionEnabled = false
            return cell
        } else {
            let secondCell = tableView.dequeueReusableCellWithIdentifier("noteCell", forIndexPath: indexPath) as! NoteCellTableViewCell
            self.activityTableView.rowHeight = 72.0
            
            return secondCell
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}