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
    @IBOutlet private weak var authorNameLabel: UILabel!
    @IBOutlet private weak var recipeImageView: UIImageView!
    @IBOutlet private weak var primaryTitleLabel: UILabel!
    @IBOutlet private weak var secondaryTitleLabel: UILabel!
    @IBOutlet private weak var preparationTimeHoursGroup: UIStackView!
    @IBOutlet private weak var preparationTimeMinutesGroup: UIStackView!
    @IBOutlet private weak var preparationTimeHoursLabel: UILabel!
    @IBOutlet private weak var preparationTimeMinutesLabel: UILabel!
    @IBOutlet private weak var nutritionLabel: UILabel!
    @IBOutlet private var starImageViews: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
        navigationController?.toolbar.isHidden = false

        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.largeTitleDisplayMode = .never
    
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
    
    private func setCustomContent() {
        let recipe: Recipe = RecipeVC.recipes[RecipeVC.recipeId]
        
        navigationItem.title = recipe.foodCategory.navTitle
        recipeImageView.image = recipe.imageMain
        primaryTitleLabel.text = recipe.titlePrimary.uppercased()
        
        if recipe.titleSecondary.isEmpty {
            secondaryTitleLabel.isHidden = true
        } else {
            secondaryTitleLabel.text = recipe.titleSecondary
        }
        
        if recipe.preparationTime.hours == 0 {
            preparationTimeHoursGroup.isHidden = true
        } else {
            preparationTimeHoursLabel.text = String(recipe.preparationTime.hours)
        }
        
        if recipe.preparationTime.minutes == 0 {
            preparationTimeMinutesGroup.isHidden = true
        } else {
            preparationTimeMinutesLabel.text = String(recipe.preparationTime.minutes)
        }
        
        nutritionLabel.text = String(recipe.nutrition)
        setRatingStars(for: recipe)
        
        authorImageView.image = recipe.author.photo
        authorNameLabel.text = recipe.author.name
    }
    
    private func setRatingStars(for recipe: Recipe) {
        for (index, star) in starImageViews.enumerated() {
            if index < recipe.rating {
                star.tintColor = #colorLiteral(red: 1, green: 0.8, blue: 0, alpha: 1)
            } else {
                star.tintColor = .lightGray
            }
        }
    }
    
}
