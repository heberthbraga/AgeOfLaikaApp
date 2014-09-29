//
//  ViewController.swift
//  AgeOfLaikaApp
//
//  Created by Heberth Braga on 9/23/14.
//  Copyright (c) 2014 Heberth Braga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var enterDogYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertDogYearBtn(sender: UIButton) {
        var dogYears:Double = Double((enterDogYearsTextField.text as NSString).doubleValue)
        
        if dogYears > 2 {
            dogYears = (10.5 * 2) + ((dogYears - 2) * 4)
        }else {
            dogYears = dogYears * 10.5
        }
        
        dogYearsLabel.text = "\(dogYears)" + " Human Years"
    }
}