//
//  ViewController.swift
//  SecondIosApp
//
//  Created by Casiano, Cameron Joseph on 10/22/19.
//  Copyright © 2019 Casiano, Cameron Joseph. All rights reserved.
//

import UIKit

// This class is the equivalent of the MAin Activty java class in Adnroid Studio
class ViewController: UIViewController {

    // Gives the view controller access to the image view
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // create an array that contains the names of he different monsters
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    // all of these IBOutlets are created as optionals, in swift this means that they may contain a value or they may be nil (null in java)
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipPercentTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    // create a string that will store the calulated tip sent to the NewViewController
    var calculatedTip = ""
    
    // equivalent of the onCreate method in the java andorid class
    // called whenthe scene that it controls is accessed (do initializtion work here)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creating an instance of a joke
        let joke = Jokes()
        
        //iterating through the jokes array
        for joke in joke.jokes {
            //printing out the jokes from the jokes array
            print(joke)
        }
    }

    // Gives the veiw controller the ability to respond to the selection of segments in the segemented control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // change the image in the image view based on the segment selected
        
        // get the index of the selected segment (0, 1, 2, 3)
        let index = sender.selectedSegmentIndex
        
        // set the imahe of the image view to a new UIImage, the new UIImage is the element in the monsters array that matches the index
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
    // Gives our vie controller the ability to respond to the button being pushed
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var dTip = 0.0
        var dAmount = 0.0
        var dPercenet = 0.0
        
        // get the values in the TextFields, if a value extists ans assig the values to constants
        // the text fields are optionals so they could have a value or just be nil
        if let amount = amountTextField.text, let percent = tipPercentTextField.text {
            
            // trim the white space that may exist at the beginning or the ending of the constants
            let trimmedAdmount = amount.trimmingCharacters(in: .whitespaces)
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
            
            // check to make sure that the trimmed constants are not empty
            if (!trimmedAdmount.isEmpty && !trimmedPercent.isEmpty){
                
                // convert the trimmed constants to doubles
                dAmount = Double(trimmedAdmount)!
                dPercenet = Double(trimmedPercent)!
                
                // calculate the tip
                dTip = dAmount * dPercenet
            }
        }
        
        tipLabel.text = "Tip is $\(String(dTip))"
        
        // store the calculatedTip in the string
        calculatedTip = "Tip is $\(String(dTip))"
        
        //segue to the NewViewController by calling this method
        // this method requires that the prepar emethod be overridden
        performSegue(withIdentifier: "GoToNewView", sender: nil)
    }
    
    // this method creates an instanc eof the ViewController that's being segued to and it passes the viewController the calculated tip
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // checking if we are segueing to the ViewController that has the identifier GoToNewView
        if segue.identifier == "GoToNewView"{
            
            // create an instance of that View Controller
            // checking if the segue destination is castable to a new ViewController and we are casting it if it is, else returning nil
            let newViewController = segue.destination as? NewViewController
            // set the insatnce's tipToShow property equal to the calulated tip
            newViewController?.tipToShow = calculatedTip
        }
    }
    
}

