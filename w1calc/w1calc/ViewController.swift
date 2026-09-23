//
//  ViewController.swift
//  w1calc
//
//  Created by Tucker on 2026-09-18.
//

import UIKit

class ViewController: UIViewController {

    let PLUS = 10
    let MINUS = 11
    let MULTIPLY = 12
    let DIVIDE = 13
    
    @IBOutlet var lblText : UILabel!
    var operand : Int = 0
    var num1 : Int = 0
    var num2 : Int = 0
    var answer : Double = 0.0
    
    var theNumber : String = "0"
    
    func printNumber(){
        lblText.text = theNumber
    }
    @IBAction func pressNum(sender : UIButton){
        if sender.tag >= 0 && sender.tag <= 9 {
            theNumber += String(sender.tag)
            printNumber()
        }
    }
    
    func saveNum1(){
        num1 = Int(theNumber)!
        theNumber = "0"
        printNumber()
    }
    
    @IBAction func setOperand(sender : UIButton){
        if sender.tag >= PLUS && sender.tag <= DIVIDE {
            operand = sender.tag
            saveNum1()
        }
    }
    
    @IBAction func clearNum(sender : UIButton){
        theNumber = "0"
        printNumber()
    }
    
    @IBAction func calculate(sender : UIButton){
        
        num2 = Int(theNumber)!
        
        if operand == PLUS {
            answer = Double(num1 + num2)
        }
        if operand == MINUS{
            answer = Double(num1 - num2)
        }
        if operand == MULTIPLY{
            answer = Double(num1 * num2)
        }
        if operand == DIVIDE{
            
            if num2 == 0 {
                let alert = UIAlertController(title: "error",
                    message: "cannot divide by zero",
                    preferredStyle: .alert)
                
                let cancelAction = UIAlertAction(title: "ok", style: .cancel)
                alert.addAction(cancelAction)
                present(alert, animated: true)
            }
            else{
                answer = Double(num1) / Double(num2)
            }
        }
        theNumber = String(answer)
        printNumber()
        num1 = 0
        num2 = 0
        answer = 0.0
        operand = PLUS
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printNumber()
    }


}

