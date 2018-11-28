//
//  RecipeViewController.swift
//  Recipes
//
//  Created by misko on 27/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

typealias RecipeVC = RecipeViewController

class RecipeViewController: UIViewController {
    
    static let recipes = Recipe.recipes()
    static var recipeId: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.toolbar.setShadowImage(UIImage(), forToolbarPosition: .bottom)
        view.backgroundColor = #colorLiteral(red: 0.9764705882, green: 0.9764705882, blue: 0.9764705882, alpha: 1)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    func addRightBarButtonNextStep() {
        let nextStepButton = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(onNextStepTapped(_:)))
        navigationItem.rightBarButtonItem = nextStepButton
    }
    
    @objc func onNextStepTapped(_ sender: UIBarButtonItem) {
        // override to perform specific segue
    }
    
}
