//
//  RoundImageView.swift
//  Recipes
//
//  Created by misko on 28/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

@IBDesignable
class RoundImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        clipsToBounds = true
    }
    
    func autoResizeCornerRadius() {
        cornerRadius = frame.height / 2.0
    }
    
}
