//
//  OptionsTableViewController.swift
//  
//
//  Created by Joseph Blau on 3/22/16.
//
//

import UIKit

let resuseIdentifer = "Option Cell"

class OptionsTableViewController: UITableViewController {

    let options = ["Touches"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(resuseIdentifer, forIndexPath: indexPath)

        cell.textLabel?.text = options[indexPath.row]

        return cell
    }

}