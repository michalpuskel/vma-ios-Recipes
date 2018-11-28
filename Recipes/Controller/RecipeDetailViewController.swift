//
//  RecipeDetailViewController.swift
//  Recipes
//
//  Created by misko on 26/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeDetailViewController: RecipeViewController {
    
    var originalBackButtonImage: UIImage?
    
    @IBOutlet private weak var authorImageView: RoundImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
        navigationController?.toolbar.isHidden = false

        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
        navigationItem.title = RecipeVC.recipes[RecipeVC.recipeId].foodCategory.navTitle
    
        navigationController?.toolbar.barTintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
        
        originalBackButtonImage = navigationController?.navigationBar.backIndicatorImage
        
        setCustomContent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.backIndicatorImage = originalBackButtonImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = originalBackButtonImage
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        authorImageView.autoResizeCornerRadius()
    }
    
    func setCustomContent() {
        // todo
    }
    
}
