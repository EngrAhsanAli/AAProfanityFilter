//
//  ViewController.swift
//  AAProfanityFilter
//
//  Created by EngrAhsanAli on 02/25/2019.
//  Copyright (c) 2019 EngrAhsanAli. All rights reserved.
//

import UIKit
import AAProfanityFilter



class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func action(_ sender: Any) {
        label.text = textField.text?.aa_profanityFiltered()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

