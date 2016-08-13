//
//  FirstViewController.swift
//  How Far Ahead
//
//  Created by Alex Koumparos on 2016-08-11.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import UIKit

class DistanceFromTimeViewController: UIViewController, UITextFieldDelegate {
    
    // ----: Need to set cursor to highlight (overwrite) existing value when textfield selected
    // Done: select clear when editing begins in attribute inspector for each textfield
    
    // Done: Need to make keyboard disappear automatically.
    // 1. make this class a delegate for the textField (declare conformance to UITextFieldDelegate)
    // 2. implement the delegate method textFieldShouldReturn
    // 3. make this VC the delegate for each textField (either drag in IB or use code)
    // Note, these only cause the keyboard to disappear when Return is pressed, and 
    // the numeric keypads do not have return
    // We also need to dismiss the keyboard when tapping away from the textfield
    // we do this by creating an action for the view itself and have that endEditing.
    // Note that UIViews cannot have actions, so we need to change
    // its class to UIControl
    
    @IBOutlet weak var fasterTextField: UITextField!
    
    @IBOutlet weak var slowerTextField: UITextField!
    
    
    @IBOutlet weak var timeSincePassedTextField: UITextField!
    
    @IBOutlet weak var distanceTextField: UITextField!
    
    @IBAction func computeButtonWasPressed(_ sender: UIButton) {
        
        calculateDistance()
        
    }
    
    @IBAction func userTappedBackground(_ sender: AnyObject) {
        view.endEditing(true)
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

