//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Gaurav Patil on 1/21/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain{
    var bmi: BMI?
    
    
    mutating func calculateBmi(height: Float, weight:Float) {
        
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
            
            print("UnderWeight")
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a feedle!!", color: .green)
            
            print("Normal")
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
            print("Overweight")
        }
        
    }
    
    func toString() -> String {
        
        
        return String(format: "%0.1F", self.bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? "Nil"
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? .red
    }
}
