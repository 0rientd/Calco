//
//  ViewController.swift
//  Calco
//
//  Created by Carlos Henrique on 31/05/20.
//  Copyright © 2020 0rientd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var soma = false
    var subtracao = false
    var multiplicacao = false
    var divisao = false
    
    var num1Negativo = false
    var num2Negativo = false
    
    var isFirstNumber = true
    var numberTemp1 : String = ""
    var numberTemp2 : String = ""
    var stringTemp : String = ""
    var keyPressed : Bool = false
    var outPutNumbersPressed : [String] = []
    
    @IBOutlet weak var outputCalc: UILabel!
    
    @IBAction func keyPad1(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "1"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
        
    }
    
    @IBAction func keyPad2(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "2"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
    }
    
    @IBAction func keyPad3(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "3"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }

    }
    
    @IBAction func keyPad4(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "4"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
    }
    
    @IBAction func keyPad5(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "5"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
    }
    
    @IBAction func keyPad6(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "6"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }

    }
    
    @IBAction func keyPad7(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "7"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
    }
    
    @IBAction func keyPad8(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "8"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }

    }
    
    @IBAction func keyPad9(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "9"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }

    }
    
    @IBAction func keyPad0(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "0"
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
    }
    
    @IBAction func keyPadDot(_ sender: Any) {
        
        if isFirstNumber == true {
            
            outputCalc.text = ""
            isFirstNumber = false
            
        }

        outputCalc.text = outputCalc.text! + "."
        
        if keyPressed == false {
        
            numberTemp1 = outputCalc.text!
        
        } else {
            
            numberTemp2 = outputCalc.text!
            
        }
        
        
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        
        keyPressed = true
        
        soma = true
        subtracao = false
        multiplicacao = false
        divisao = false
        
        isFirstNumber = true
        
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        
        keyPressed = true
        
        soma = false
        subtracao = true
        multiplicacao = false
        divisao = false
        
        isFirstNumber = true
        
    }
    
    @IBAction func buttonMultiplicar(_ sender: Any) {
        
        keyPressed = true
        
        soma = false
        subtracao = false
        multiplicacao = true
        divisao = false
        
        isFirstNumber = true

        
    }
    
    @IBAction func buttonDividir(_ sender: Any) {
        
        keyPressed = true
        
        soma = false
        subtracao = false
        multiplicacao = false
        divisao = true
        
        isFirstNumber = true

        
    }
    
    @IBAction func resultCalc(_ sender: Any) {
        
        let num1 = Float(numberTemp1) ?? 0
        let num2 = Float(numberTemp2) ?? 0
        
        if soma == true {
            
            let result = num1 + num2
            outputCalc.text = String(result)
            numberTemp1 = outputCalc.text!
            
            keyPressed = false
            
        } else if subtracao == true {
            
            let result = num1 - num2
            outputCalc.text = String(result)
            numberTemp1 = outputCalc.text!
            
            keyPressed = false
            
        } else if multiplicacao == true {
            
            let result = num1 * num2
            outputCalc.text = String(result)
            numberTemp1 = outputCalc.text!
            
            keyPressed = false
            
        } else if divisao == true {
            
            let result = num1 / num2
            outputCalc.text = String(result)
            numberTemp1 = outputCalc.text!
            
            keyPressed = false
            
        }
        
    }
    
    @IBAction func mudarSinal(_ sender: Any) {
        
        if keyPressed == false {
        
            var num1 = Float(outputCalc.text!)
            num1 = num1! * -1
            numberTemp1 = String(num1!)
            
            outputCalc.text = numberTemp1
            
            num1Negativo = true
        
        } else {
            
            var num2 = Float(outputCalc.text!)
            num2 = num2! * -1
            numberTemp2 = String(num2!)
            
            outputCalc.text = numberTemp2
            
            num1Negativo = true
            
        }
        
    }
    
    @IBAction func clearAll(_ sender: Any) {
        
        outputCalc.text = "0"
        numberTemp1 = "0"
        numberTemp2 = "0"
        
        
        
        keyPressed = false
        soma = false
        subtracao = false
        multiplicacao = false
        divisao = false

        isFirstNumber = true
        
    }
    
}
