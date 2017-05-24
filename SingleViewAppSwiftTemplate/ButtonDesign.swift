//
//  ButtonDesgin.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michael Guatambu Davis on 5/23/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

@IBDesignable class ButtonDesign: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0    {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
