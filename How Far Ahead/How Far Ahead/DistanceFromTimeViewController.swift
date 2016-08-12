//
//  FirstViewController.swift
//  How Far Ahead
//
//  Created by Alex Koumparos on 2016-08-11.
//  Copyright © 2016 Alex Koumparos. All rights reserved.
//

import UIKit

class DistanceFromTimeViewController: UIViewController {
    
    
    @IBOutlet weak var fasterTextField: UITextField!
    
    @IBOutlet weak var slowerTextField: UITextField!
    
    // TODO: make the timeSincePassedTextField force a mm:ss format value
    @IBOutlet weak var timeSincePassedTextField: UITextField!
    
    @IBOutlet weak var distanceTextField: UITextField!
    
    @IBAction func computeButtonWasPressed(_ sender: UIButton) {
        
        guard Double(fasterTextField.text!) > Double(slowerTextField.text!) else { return }
        
        // TODO: code to calculate distance goes here
        
    }
    
    func timeFromTimeSincePassedTextField() {
        
        // TODO: take a mm:ss formatted value from the text field and
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

