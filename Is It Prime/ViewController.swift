//
//  ViewController.swift
//  Is It Prime
//
//  Created by Abdallah Eid on 9/15/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var resutLabel: UILabel!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        if let input = Int(textField.text!){
            
            var i = 2
            
            var isPrime = true  
            
            while i < input {
                
                if input % i == 0 	{
                    
                    isPrime = false
                    
                }
                
                i += 1
                
            }
            
            if isPrime {
                
                resutLabel.text = "\(input) is prime"
                
            }
            else {
                
                resutLabel.text = "\(input) is not prime"
                
            }
            
        }
        else{
            
            resutLabel.text = "Please, Enter a positive number"
            
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

