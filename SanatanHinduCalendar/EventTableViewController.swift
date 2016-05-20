//
//  EventTableViewController.swift
//  SanatanHinduCalendar
//
//  Created by Harish Setty on 20/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

//import Foundation

import UIKit

class EventTableViewController: UITableViewController {

    var model:Model = Model.sharedInstance
    
    // MARK: - Prepare data for display
    // Make sure the latest data is displayed when the view is displayed
    override func  viewDidAppear(animated: Bool)
    {
        self.tableView.reloadData()
    }
    
    // Just prior to the view appearing, get the latest copy of movies from the model
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        model.getEvents()
    }
    
    
    // MARK: - Populate the table view
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return model.events.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        let event = model.getEvent(indexPath.row)
        cell.textLabel!.text = event.name
        cell.detailTextLabel!.text = event.place
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    // MARK: - Enable Swipe to Delete
    // System method that enables swipe to delete on a row in a tableview controller.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
    {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
