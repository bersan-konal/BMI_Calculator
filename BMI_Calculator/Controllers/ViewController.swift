//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Muzaffer Berşan Konal on 16.09.2021.
//

import UIKit

class ViewController: UIViewController {
   
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let heightText = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heightText)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightText = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weightText)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderValue.value
        let weight = weightSliderValue.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "toSecond", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = calculatorBrain.getValue()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

