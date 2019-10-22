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


}

