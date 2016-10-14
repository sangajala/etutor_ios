//
//  CustomImageView.swift
//  e-tutor
//
//  Created by Deepthi Kaligi on 08/10/2016.
//  Copyright © 2016 Banana Apps. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setupShadow()
    }
  
    func setupShadow() -> () {
        self.layer.cornerRadius = 4.0
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset  = CGSize(width: -1, height:2)
        self.layer.shadowRadius = 3
        self.layer.shadowOpacity = 0.8

    }
    
 
    

}
