//
//  IngredientsViewController.swift
//  Recipes
//
//  Created by misko on 27/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeIngredientsViewController: RecipeViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "backArrow")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "backArrow")
        
        navigationController?.toolbar.barTintColor = .white
        
        addRightBarButtonNextStep()
    }

    @objc override func onNextStepTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ingredientsNextStepSegueFirstStep", sender: nil)
    }
    
}
