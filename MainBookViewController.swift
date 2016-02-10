//
//  MainBookViewController.swift
//  Oras BookPlanner
//
//  Created by Joseph Mennemeier on 2/3/16.
//  Copyright © 2016 Joseph Mennemeier. All rights reserved.
//

import UIKit

class MainBookViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // var floatingButton = UIButton(frame: CGRectMake(10, 20, 50, 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        /* floatingButton.backgroundColor = UIColor.whiteColor()
        floatingButton.layer.cornerRadius = floatingButton.frame.size.width / 2
        floatingButton.setTitle("+", forState: UIControlState.Normal)
        floatingButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        floatingButton.titleLabel?.font = UIFont(name: floatingButton.titleLabel!.font.familyName, size: 50)
        floatingButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 10)
        view.addSubview(floatingButton) */
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        
        return cell
    }
}
