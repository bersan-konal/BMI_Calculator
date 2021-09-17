//
//  SecondViewController.swift
//  BMI_Calculator
//
//  Created by Muzaffer Berşan Konal on 16.09.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    var bmiValue: String?
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        view.backgroundColor = color
    }
}
