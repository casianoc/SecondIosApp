//
//  NewTableViewController.swift
//  SecondIosApp
//
//  Created by Casiano, Cameron Joseph on 10/29/19.
//  Copyright © 2019 Casiano, Cameron Joseph. All rights reserved.
//

import UIKit

class NewTableViewController: UITableViewController {

    // create an array that contains the names of he different monsters
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    // Table View Controllers inherit methods that allow them to define what the actual TableViewController looks like
    // this methid defines the number of sections the table view controller will have
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // this method defines the number of rows in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return monsters.count
    }

    //this method defines what each cell in the table looks like
    // it gets called the same number of times as there are rows as ther ee are in each section
    // the index path object is a swift struct that encapsulates the section of each cell and the row of each cell
    // (0,0) (0,1) (0,2) (0,3)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterCell", for: indexPath)

        // Configure the cell...
        // the cell has a textLabel (Title), imageView, and it has a detailTextLabel (Subtitle)
        cell.textLabel?.text = monsters[indexPath.row]
        cell.imageView?.image = UIImage(named: monsters[indexPath.row])
        cell.detailTextLabel?.text = monsters[indexPath.row]
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
