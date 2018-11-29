//
//  IngredientsViewController.swift
//  Recipes
//
//  Created by misko on 27/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeIngredientsViewController: RecipeViewController {

    @IBOutlet private weak var ingredientsImageView: UIImageView!
    @IBOutlet private weak var ingredientsMultiLineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "backArrow")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "backArrow")
        
        navigationController?.toolbar.barTintColor = .white
        
        addRightBarButtonNextStep()
        
        setCustomContent()
    }
    
    private func setCustomContent() {
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        navigationItem.title = recipe.titlePrimary.uppercased()
        ingredientsImageView.image = recipe.imageIngredients
        ingredientsMultiLineLabel.attributedText = getMultiLineLabelText(for: recipe.ingredients,
                                                                         withSpacing: 10.0,
                                                                         withAlignment: .center)
    }
    
    // MARK: - Navigation
    
    @objc override func onNextStepTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ingredientsNextStepSegueFirstStep", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let recipeStepVC = segue.destination as! RecipeStepViewController
        recipeStepVC.stepId = 0
    }
    
}
