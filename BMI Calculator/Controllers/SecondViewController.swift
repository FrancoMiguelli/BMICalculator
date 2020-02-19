//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Midas Tecnologia on 18/02/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit



class SecondVireController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelInstruct: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = bmiValue
        labelInstruct.text = advice
        view.backgroundColor = color
    }
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
