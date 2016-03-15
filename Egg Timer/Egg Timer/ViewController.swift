//
//  ViewController.swift
//  Egg Timer
//
//  Created by Amin Rezapour on 3/14/16.
//  Copyright © 2016 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()

    var time = 0
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        time++
        let seconds = time % 60
        let minutes = time / 60
        let hours   = time / 3600
        
        var result = ""
        
        if hours > 0 {
            result = "\(hours)h, \(minutes)m, \(seconds)s"
        } else if minutes > 0 {
            result = "\(minutes)m,\(seconds)s"
        } else {
            result = "\(seconds)s"
        }
        timerLabel.text = result
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
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

