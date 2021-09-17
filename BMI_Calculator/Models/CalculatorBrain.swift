//
//  calculatorBrain.swift
//  BMI_Calculator
//
//  Created by Muzaffer Berşan Konal on 16.09.2021.
//
import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBMI(height: Float,weight:Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.9 {
            bmi = BMI(bmiValue: bmiValue, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9 {
            bmi = BMI(bmiValue: bmiValue, color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        else {
            bmi = BMI(bmiValue: bmiValue, color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
    }
    
    func getValue() ->String {
        return String(format: "%.1f",  bmi?.bmiValue ?? "error")
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.red
    }
    
}
