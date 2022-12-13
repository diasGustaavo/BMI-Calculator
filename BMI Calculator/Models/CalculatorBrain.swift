import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 0.4275, green: 0.6, blue: 1, alpha: 1.0))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(red: 0.4392, green: 1, blue: 0.502, alpha: 1.0))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(red: 1, green: 0.4275, blue: 0.4392, alpha: 1.0))
        }
        
    }
}
