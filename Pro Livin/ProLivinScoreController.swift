//
//  FirstViewController.swift
//  Pro Livin
//
//  Created by Ezra Aigbe on 7/23/17.
//  Copyright © 2017 Ezra Aigbe. All rights reserved.
//

import UIKit

class ProLivinScoreController: UIViewController {
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var benchInput: UITextField!
    
    @IBOutlet weak var squatInput: UITextField!
    
    @IBOutlet weak var fortyInput: UITextField!
    
    @IBOutlet weak var cleanInput: UITextField!
    
    @IBOutlet weak var verticalInput: UITextField!
    
    
    
    @IBAction func getScore(_ sender: Any) {
        
        var bench: String = benchInput.text!;
        
        
        
        
        
        
        
        scoreLabel.text = bench;
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

