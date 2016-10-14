//
//  ViewController.swift
//  e-tutor
//
//  Created by Deepthi Kaligi on 03/10/2016.
//  Copyright © 2016 Banana Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var email : YoshikoTextField!
    @IBOutlet weak var password : YoshikoTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        email.placeholder = "user name"
        password.placeholder = "password"
        email.placeholderColor = UIColor.white
        password.placeholderColor = UIColor.white
        email.activeBorderColor = UIColor.white
        password.activeBorderColor = UIColor.white
        email.placeholderLabel.textColor = UIColor.white
        password.placeholderLabel.textColor = UIColor.white
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

