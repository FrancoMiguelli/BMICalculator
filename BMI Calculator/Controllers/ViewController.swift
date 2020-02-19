//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSliderOut: UISlider!
    @IBOutlet weak var weightSliderOut: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        
        
        let heightValueFinal = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightValueFinal)m"
        print(heightValueFinal)
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        
        
       let weightValueFinal = String(format: "%.0f", sender.value)
       weightLabel.text = "\(weightValueFinal)Kg"
        print(weightLabel.text!)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderOut.value
        let weight = weightSliderOut.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        
        performSegue(withIdentifier: "goToSecondView", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondView" {
            let destinationSecondView = segue.destination as! SecondVireController
            destinationSecondView.bmiValue = calculatorBrain.getBMIValue()
            destinationSecondView.advice = calculatorBrain.bmi?.advice
            destinationSecondView.color = calculatorBrain.bmi?.color
        }
    }
}

