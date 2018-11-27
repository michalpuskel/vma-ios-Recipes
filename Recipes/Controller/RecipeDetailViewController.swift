//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by misko on 26/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeDetailViewController: BorderLessViewController {
    
    let recipes = Recipe.recipes()
    var recipeId: Int = 0
    
    var originalBackButtonImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
        navigationController?.toolbar.isHidden = false

        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = recipes[recipeId].foodCategory.navTitle
    
        navigationController?.toolbar.barTintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        
        originalBackButtonImage = navigationController?.navigationBar.backIndicatorImage
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.backIndicatorImage = originalBackButtonImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = originalBackButtonImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
