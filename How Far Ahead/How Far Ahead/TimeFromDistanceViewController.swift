//
//  SecondViewController.swift
//  How Far Ahead
//
//  Created by Alex Koumparos on 2016-08-11.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import UIKit

class TimeFromDistanceViewController: UIViewController {

    @IBOutlet weak var fasterTextField: UITextField!
    
    @IBOutlet weak var slowerTextField: UITextField!
    
    @IBOutlet weak var timeSincePassedTextField: UITextField!
    
    @IBOutlet weak var timeToReachTextField: UITextField!
    
    
    @IBAction func computeButtonWasPressed(_ sender: AnyObject) {
        calculateTime()
    }
    
    func calculateDistance() {
        // e.g. faster is travelling at 60 kmh
        //      slower is travelling at 30 kmh
        //      faster passed slower 5 minutes ago
        //      how far ahead is faster now
        //      (bonus, when will slower reach faster's current location?)
        let fasterSpeed = Double(fasterTextField.text ?? "0")!
        let slowerSpeed = Double(slowerTextField.text ?? "0")!
        let netSpeed = fasterSpeed - slowerSpeed
        
        let minutesSincePassed = Double(timeSincePassedTextField.text ?? "0")! // minutes
        let hoursSincePassed = minutesSincePassed / 60
        
        let distance = netSpeed * hoursSincePassed
        let roundedDistance = round(distance * 100) / 100
        
        // done: tidy the string formatting of the output (round to 2DP?)
        distanceTextField.text = String(roundedDistance)
        
        
    }
    
    func calculateTime() {
        
        // use result of calculateDistance() to determine time to reach
        
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

