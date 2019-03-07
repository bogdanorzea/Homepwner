//
//  CustomUITextField.swift
//  Homepwner
//
//  Created by Bogdan Orzea on 3/4/19.
//  Copyright © 2019 Bogdan Orzea. All rights reserved.
//

import UIKit

class CustomUITextField: UITextField {

    override func becomeFirstResponder() -> Bool {
        super.becomeFirstResponder()
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.cornerRadius = 6.0
        self.layer.masksToBounds = true
        
        super.setNeedsDisplay()
        
        return true
    }
    
    override func resignFirstResponder() -> Bool {
        super.resignFirstResponder()

        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.5).cgColor
        self.layer.cornerRadius = 6.0
        self.layer.masksToBounds = true
        
        self.borderStyle = .roundedRect
        super.setNeedsDisplay()
        
        return true
    }
}
