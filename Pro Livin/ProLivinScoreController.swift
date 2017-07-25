//
//  FirstViewController.swift
//  Pro Livin
//
//  Created by Ezra Aigbe on 7/23/17.
//  Copyright © 2017 Ezra Aigbe. All rights reserved.
//

import UIKit

class ProLivinScoreController: UIViewController, UITextFieldDelegate {
    struct MyVariables {
        
        static var bench : Double = 0.0;
        static var squat : Double = 0.0;
        static var forty : Double = 0.0;
        static var clean : Double = 0.0;
        static var vertical : Double = 0.0;
        
        //
        
        static var lBench : Double = 65;
        
        static var lSquat : Double = 70;
        
        static var hFourty : Double = 10;
        
        static var lPower : Double = 70;
        
        static var lVert : Double = 7;
        
        static var maxBench : Double = 345;
        
        static var maxSquat : Double = 480;
        
        static var leastFourty : Double = 4.4;
        
        static var maxPower : Double = 300;
        
        static var maxVert : Double = 40;
        
        static var incBench : Double = 28;
        
        static var incSquat : Double = 41;
        
        static var incFourty : Double = 0.56;
        
        static var incPower : Double = 23;
        
        static var incVert : Double = 3.3;
        
        
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var benchInput: UITextField!
    
    @IBOutlet weak var squatInput: UITextField!
    
    @IBOutlet weak var fortyInput: UITextField!
    
    @IBOutlet weak var cleanInput: UITextField!
    
    @IBOutlet weak var verticalInput: UITextField!
    
    
    
    @IBAction func getScore(_ sender: Any) {
        
        if benchInput.text == "" || squatInput.text == "" || fortyInput.text == "" || cleanInput.text == "" || verticalInput.text == ""
        {
        //some error
        //throw in something like a screen vibration or like a "toast"
            
            
            
            
        }
        
        else{
            
            
        MyVariables.bench = Double(benchInput.text!)!
        MyVariables.squat = Double(squatInput.text!)!
        MyVariables.forty = Double(fortyInput.text!)!
        MyVariables.clean = Double(cleanInput.text!)!
        MyVariables.vertical = Double(verticalInput.text!)!
            
            
            scoreLabel.text = String(getBench(pBench : MyVariables.bench)+getSquat(pSquat : MyVariables.squat)+getForty(pForty: MyVariables.forty)+getPower(pPower : MyVariables.clean)+getVert(pVert: MyVariables.vertical))
            
            
            
            
            
            
        }
        
        
        
        
        
        
        
    }
    
    func getBench(pBench: Double) -> Int {
        var mBench : Double = pBench;
        if mBench >= MyVariables.maxBench{
            return 10;
        }
        mBench -= MyVariables.lBench;
        var count : Int = 0;
        
        while mBench >= 0{
            mBench -= MyVariables.incBench;
            
            if mBench >= 0 {
                count = count + 1;
            }
            
        }
        return count;
        
    }
    func getSquat(pSquat: Double) -> Int {
        var mSquat : Double = pSquat;
        if mSquat >= MyVariables.maxSquat{
            return 20;
        }
        mSquat -= MyVariables.lSquat;
        var count : Int = 0;
        
        while mSquat >= 0{
            mSquat -= MyVariables.incSquat;
            
            if mSquat >= 0 {
                count = count + 1;
            }
            
        }
        return count*2;
        
    }
    func getForty(pForty: Double) -> Int{
        var mForty : Double = pForty;
        if mForty <= MyVariables.leastFourty{
            return 30;
        }
        
        mForty = MyVariables.hFourty-mForty;
        
        var count: Int = 0;
        
        while mForty >= 0{
            mForty -= MyVariables.incFourty;
            
            if mForty >= 0{
                count = count + 1;
            }
        }
        
        
        return count*3;
    }
    func getPower(pPower: Double) -> Int {
        var mPower : Double = pPower;
        if mPower >= MyVariables.maxPower{
            return 20;
        }
        mPower -= MyVariables.lPower;
        var count : Int = 0;
        
        while mPower >= 0{
            mPower -= MyVariables.incPower;
            
            if mPower >= 0 {
                count = count + 1;
            }
            
        }
        return count*2;
        
    }
    func getVert(pVert: Double) -> Int {
        var mVert : Double = pVert;
        if mVert >= MyVariables.maxVert{
            return 20;
        }
        mVert -= MyVariables.lVert;
        var count : Int = 0;
        
        while mVert >= 0{
            mVert -= MyVariables.incVert;
            
            if mVert >= 0 {
                count = count + 1;
            }
            
        }
        return count*2;
        
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

