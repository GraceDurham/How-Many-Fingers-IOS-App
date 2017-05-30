//
//  ViewController.swift
//  How many fingers
//
//  Created by Grace Durham on 5/24/17.
//  Copyright © 2017 gracedurham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numLabel: UILabel!
    
    @IBOutlet var numTextField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        
        let diceRoll = Int(arc4random_uniform(6))
        
        let guessText = Int(numTextField.text!)
        
        if guessText != diceRoll{
            numLabel.text = "Your wrong! It was \(diceRoll)"
        }else {
            numLabel.text = "Your right"
        
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

