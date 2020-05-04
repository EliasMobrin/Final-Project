//
//  ViewController.swift
//  Final Project
//
//  Created by Elias Mobrin on 5/2/20.
//  Copyright © 2020 Elias Mobrin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    @IBAction func foundTap(_ sender: Any) {
         outputLabel.text = "You're team 1!"
    }
    
    @IBAction func slideMe(_ sender: Any) {
        outputLabel.text = "You're team 2!"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

