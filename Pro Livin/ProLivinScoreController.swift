//
//  FirstViewController.swift
//  Pro Livin
//
//  Created by Ezra Aigbe on 7/23/17.
//  Copyright © 2017 Ezra Aigbe. All rights reserved.
//

import UIKit

class ProLivinScoreController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var benchInput: UITextField!
    
    @IBOutlet weak var squatInput: UITextField!
    
    @IBOutlet weak var fortyInput: UITextField!
    
    @IBOutlet weak var cleanInput: UITextField!
    
    @IBOutlet weak var verticalInput: UITextField!
    
    
    
    @IBAction func getScore(_ sender: Any) {
        
        if benchInput.text == "" || squatInput.text == "" || fortyInput.text == "" || cleanInput.text == "" || verticalInput.text == "" {
        //some error
            
        }
        
        else{
            
            
        var bench: Double = Double(benchInput.text!)!
        var squat: Double = Double(squatInput.text!)!
        var forty: Double = Double(fortyInput.text!)!
        var clean: Double = Double(cleanInput.text!)!
        var vertical: Double = Double(verticalInput.text!)!
            
            
        }
        
        
        
        
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        benchInput.delegate = self
        benchInput.keyboardType = .decimalPad
        squatInput.delegate = self
        squatInput.keyboardType = .decimalPad
        fortyInput.delegate = self
        fortyInput.keyboardType = .decimalPad
        cleanInput.delegate = self
        cleanInput.keyboardType = .decimalPad
        verticalInput.delegate = self
        verticalInput.keyboardType = .decimalPad
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func benchInput(_ benchInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    func squatInput(_ squatInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    func fortyInput(_ fortyInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    func cleanInput(_ cleanInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }

    func verticalInput(_ verticalInput: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let invalidCharacters = CharacterSet(charactersIn: "0123456789").inverted
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }



    
}

