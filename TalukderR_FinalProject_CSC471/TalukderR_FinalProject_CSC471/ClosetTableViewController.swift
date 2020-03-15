//
//  ClosetTableViewController.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/14/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class ClosetTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(GlobalShirtObjectList.shirtObjectList.count)
        return GlobalShirtObjectList.shirtObjectList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let shirtObject = GlobalShirtObjectList.shirtObjectList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "shirtObjectType", for: indexPath)
        
        // Configure the cell...
        
        cell.textLabel?.text = shirtObject.nickName
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
             //Delete the row from the data source
            GlobalShirtObjectList.shirtObjectList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        else {
            return
        }
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        self.tableView.reloadData()
        if let closetVC = segue.destination as? ClosetDetailVC {
           if let indexPath = self.tableView.indexPathForSelectedRow {
            closetVC.shirtObject = GlobalShirtObjectList.shirtObjectList[indexPath.row]
           }
       }
    }
}
