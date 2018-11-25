//
//  CardTableViewCell.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    var recipeImage: UIImage? {
        didSet {
            recipeImageView.image = recipeImage
        }
    }
    
    var recipeTitle: String? {
        didSet {
            recipeTitleLabel.text = recipeTitle
        }
    }
    
    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    
}
