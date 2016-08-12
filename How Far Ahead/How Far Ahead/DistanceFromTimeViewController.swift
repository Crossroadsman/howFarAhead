//
//  FirstViewController.swift
//  How Far Ahead
//
//  Created by Alex Koumparos on 2016-08-11.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import UIKit

class DistanceFromTimeViewController: UIViewController {
    
    // TODO: Need to set cursor to highlight (overwrite) existing value when textfield selected
    
    // TODO: Need to make keyboard disappear automatically.
    
    @IBOutlet weak var fasterTextField: UITextField!
    
    @IBOutlet weak var slowerTextField: UITextField!
    
    // TODO: make the timeSincePassedTextField force a mm:ss format value
    @IBOutlet weak var timeSincePassedTextField: UITextField!
    
    @IBOutlet weak var distanceTextField: UITextField!
    
    @IBAction func computeButtonWasPressed(_ sender: UIButton) {
        
        calculateDistance()
        
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
        
        // TODO: tidy the string formatting of the output (round to 2DP?)
        distanceTextField.text = String(distance)
        
        
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

