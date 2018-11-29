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
        setMultiLineLabel(for: recipe.ingredients, withSpacing: 10.0)
    }
    
    private func setMultiLineLabel(for ingredientsText: String, withSpacing lineSpacing: CGFloat) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.alignment = .center
        
        let attributedIngredientsText = NSMutableAttributedString(string: ingredientsText)
        attributedIngredientsText.addAttribute(NSAttributedString.Key.paragraphStyle,
                                               value: paragraphStyle,
                                               range: NSMakeRange(0, attributedIngredientsText.length))
        
        ingredientsMultiLineLabel.attributedText = attributedIngredientsText
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
