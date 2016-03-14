//
//  ViewController.swift
//  GuessingGame
//
//  Created by Amin Rezapour on 3/13/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var user_input: UITextField!
    
    @IBOutlet var user_guess: UITextField!
    
    @IBOutlet var result: UILabel!
    
    
    @IBAction func guess(sender: AnyObject) {
        
        let rand = String(arc4random_uniform(6))
        
        if user_guess.text == "" {
            
            result.text = "Please enter a number!"
            
        } else if user_guess.text == rand {
            
            result.text = "Correct! it is " + rand
            
        } else {
            
            result.text = "Sorry! the correct number is " + rand
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

