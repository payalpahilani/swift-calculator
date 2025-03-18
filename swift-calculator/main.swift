//
//  main.swift
//  swift-calculator
//
//  Created by Payal Pahilani on 2025-03-17.
//

import Foundation

func calculate(num1: Double, num2: Double, operation: String)-> Double?{
    switch operation{
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        return num2 != 0 ? num1 / num2 : nil
    default :
        return nil
    }
}

//taking user input
print("Enter first Number: ")
if let input = readLine(), let num1 = Double(input){
    
    print("Select an operator from(+ - * /):")
    if let operation = readLine(){
        
        print("Enter second Number: ")
        if let input2 = readLine(), let num2 = Double(input2){
            
            if let result = calculate(num1: num1, num2: num2, operation: operation){
                print("Result is: \(result)")
            } else {
                print("Invalid operatorion or division by zero!")
            }
            
        } else{
                print("Invalid number input")
        }
    } else{
        print("Invalid operator input.")
      }
} else{
    print("Invalid number input.")
}

