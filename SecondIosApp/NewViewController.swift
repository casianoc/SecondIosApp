//
//  NewViewController.swift
//  SecondIosApp
//
//  Created by Casiano, Cameron Joseph on 10/29/19.
//  Copyright © 2019 Casiano, Cameron Joseph. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    // this gives the newViewcontroller acccess to the label
    @IBOutlet weak var tipLabel: UILabel!
    
    // create a String that will store the calculated tip sent from the original viewController
    var tipToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //display the calculated tip ssent from the original ViewController in the label
        tipLabel.text = tipToShow

    }
    
    @IBAction func goToTableView(_ sender: UIButton) {
        
        //segue to the NewViewController by calling this method
        // this method requires that the prepar emethod be overridden
        performSegue(withIdentifier: "GoToTableView", sender: nil)
    }
    
    // this method creates an instanc eof the ViewController that's being segued to
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // checking if we are segueing to the ViewController that has the identifier GoToTableView
        if segue.identifier == "GoToTableView"{
            
            // create an instance of that View Controller
            // checking if the segue destination is castable to a new TableViewController and we are casting it if it is, else returning nil
            _ = segue.destination as? NewTableViewController
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
