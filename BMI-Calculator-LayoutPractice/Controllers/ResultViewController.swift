//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Gaurav Patil on 1/20/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiBrain = CalculateBrain()
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiLabel.text = bmiBrain.toString()
        adviceLabel.text = bmiBrain.getAdvice()
        view.backgroundColor = bmiBrain.getColor()
        //self.background = bmiBrain.getColor()
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
