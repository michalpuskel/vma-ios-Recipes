//
//  RecipeStepViewController.swift
//  Recipes
//
//  Created by misko on 28/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeStepViewController: RecipeViewController {
    
    var stepId: Int = 0
    
    private var nextStepId: Int {
        return stepId + 1
    }
    
    @IBOutlet private weak var programmableToolBarButtonItem: UIBarButtonItem!
    @IBOutlet private weak var stepMultiLineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        if nextStepId < recipe.recipeSteps.count {
            addRightBarButtonNextStep()
        }
        
        setCustomContent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setBottomToolBarButtonGUI()
        setBottomToolBarButtonNavigation()
    }
    
    private func setCustomContent() {
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        navigationItem.title = recipe.titlePrimary.uppercased() + " #\(stepId + 1)"
        stepMultiLineLabel.attributedText = getMultiLineLabelText(for: recipe.recipeSteps[stepId],
                                                                  withSpacing: 7.0,
                                                                  withAlignment: .justified)
    }
    
    private func setBottomToolBarButtonGUI() {
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        if nextStepId < recipe.recipeSteps.count {
            navigationController?.toolbar.barTintColor = .white
            programmableToolBarButtonItem.tintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
            programmableToolBarButtonItem.title = "STEP \(nextStepId + 1)"
        } else {
            navigationController?.toolbar.barTintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
            programmableToolBarButtonItem.tintColor = .white
            programmableToolBarButtonItem.title = "VIEW ALL RECIPES"
        }
    }
    
    // MARK: - Navigation
    
    @objc override func onNextStepTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "recipeStepSegueLoop", sender: nil)
    }
    
    @objc private func onViewAllRecipesTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "lastRecipeStepUnwindSegueTableList", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipeStepVC = segue.destination as? RecipeStepViewController {
            recipeStepVC.stepId = nextStepId
        }
    }
    
    private func setBottomToolBarButtonNavigation() {
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        programmableToolBarButtonItem.target = self
        if nextStepId < recipe.recipeSteps.count {
            programmableToolBarButtonItem.action = #selector(onNextStepTapped(_:))
        } else {
            programmableToolBarButtonItem.action = #selector(onViewAllRecipesTapped(_:))
        }
    }

}
