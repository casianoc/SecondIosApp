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
    
}

