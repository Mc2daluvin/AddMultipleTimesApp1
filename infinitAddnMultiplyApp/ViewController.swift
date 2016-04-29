//
//  ViewController.swift
//  infinitAddnMultiplyApp
//
//  Created by Mc on 4/29/16.
//  Copyright © 2016 Good Rock Apps LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var addBy = 0
    var currentVAlue = 0
    var maxValue = 50
    
    
    
    
    @IBOutlet var logoLAbel: UIImageView!
    @IBOutlet var formulaLabel: UILabel!
    
    @IBOutlet var addMultiplesOfQuestion: UITextField!
    
    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var addButton: UIButton!
    
    
    @IBAction func startButtonAction(sender: UIButton) {
        
        if Int(addMultiplesOfQuestion.text!) != 0 && addMultiplesOfQuestion.text != nil {
            
            addMultiplesOfQuestion.hidden = true
            addButton.hidden = false
            startButton.hidden = true
            formulaLabel.hidden = false
            
            logoLAbel.hidden = true
            
            addBy = Int(addMultiplesOfQuestion.text!)!
            
            formulaLabel.text = "\(currentVAlue) + \(addBy) = \(currentVAlue + addBy)"
           
            currentVAlue = currentVAlue + addBy

            
            view.endEditing(true)

            
            
            
        }
    }
    
    
    func restrartGame(){
        addBy = 0
        currentVAlue = 0
    
        addMultiplesOfQuestion.hidden = false
        addButton.hidden = true
        startButton.hidden = false
        formulaLabel.hidden = true
        
        logoLAbel.hidden = false
        
        addMultiplesOfQuestion.text = ""
        
        
    }
    
    @IBAction func addAction(sender: UIButton) {
        
        if currentVAlue <= maxValue {
            addBy = Int(addMultiplesOfQuestion.text!)!
            
            
            formulaLabel.text = "\(currentVAlue) + \(addBy) = \(currentVAlue + addBy)"
            
            currentVAlue = currentVAlue + addBy
        }else {
        
        restrartGame()
            
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

