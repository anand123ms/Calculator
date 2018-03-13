//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 11/03/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Add some comments in viewDidLoad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display!.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        let mathmeticalSymbol = sender.currentTitle!
        switch mathmeticalSymbol {
        case "pi" :
            display!.text =  String(Double.pi)
        case "√" :
            let operand = Double(display.text!)!
            display!.text = String(sqrt(operand))
        default:
            break
        }
    }
}

