//
//  ViewController.swift
//  Is It Prime
//
//  Created by Rob Percival on 15/06/2015.
//  Copyright © 2015 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!){
        
            var is_prime = true
        
            if number == 1 { is_prime = false }
        
            if number != 1 && number != 2 {
                for i in 2...(number-1) {
                    if number % i == 0 {
                        is_prime = false
                        break
                    }
                }
            }
        
            if is_prime {
                resultLabel.text = "Prime"
            } else {
                resultLabel.text = "Not Prime"
            }
            
        } else {
            resultLabel.text = "Not a number"
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

