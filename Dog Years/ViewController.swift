//
//  ViewController.swift
//  Dog Years
//
//  Created by Ari Mir on 9/24/14.
//  Copyright (c) 2014 Ari Mir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var inputDogYearsTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertDogYears(sender: UIButton)
    {
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(inputDogYearsTextField.text.toInt()! * 7)"
        inputDogYearsTextField.resignFirstResponder()
        inputDogYearsTextField.text = ""
    }

    @IBAction func convertScientificDogYears(sender: UIButton)
    {
        dogYearsLabel.hidden = false
        var dogYears = inputDogYearsTextField.text.toInt()!
        var convertedDogYears = Double(dogYears)
        
        if convertedDogYears <= 2
        {
            dogYearsLabel.text = "\(convertedDogYears * 10.5)"
        }
        
        else if convertedDogYears > 2
        {
            dogYearsLabel.text = "\(21 + ((convertedDogYears - 2) * 10.5))"
        }
        
        inputDogYearsTextField.resignFirstResponder()
        inputDogYearsTextField.text = ""
    }
}

