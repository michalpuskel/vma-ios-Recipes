//
//  Recipe.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

struct Recipe {
    var imagePreview: UIImage?
    var imageMain: UIImage?
    var imageIngredients: UIImage?
    
    var titlePrimary: String
    var titleSecondary: String
    var foodCategory: FoodCategory
    
    var preparationTime: PreparationTime
    var nutrition: UInt16
    var rating: UInt8
    
    var author: Author
    
    var ingredients: String
    var recipeSteps: [String]
}

extension Recipe {
    
    static func recipes() -> [Recipe] {
        var recipes = [Recipe]()
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "turkey.ico"), imageMain: #imageLiteral(resourceName: "turkey.image"), imageIngredients: #imageLiteral(resourceName: "turkey.ingredients"),
                   titlePrimary: "Homestyle Turkey", titleSecondary: "the Michigander Way", foodCategory: .meat,
                   preparationTime: PreparationTime(hours: 5, minutes: 10), nutrition: 545, rating: 4,
                   author: Author(name: "Janine Perkins", photo: #imageLiteral(resourceName: "janine_perkins")),
                   ingredients:"""
1 (12 pound) whole turkey
6 tablespoons butter, divided
4 cups warm water
3 tablespoons chicken bouillon
2 tablespoons dried parsley
2 tablespoons dried minced onion
2 tablespoons seasoning salt
""",
                   recipeSteps: ["""
Preheat oven to 350 degrees F (175 degrees C). Rinse and wash turkey.
Discard the giblets, or add to pan if they are anyone's favorites.
""",
                                 """
Place turkey in a Dutch oven or roasting pan. Separate the skin over the
breast to make little pockets. Put 3 tablespoons of the butter on both
sides between the skin and breast meat. This makes for very juicy
breast meat.
""",
                                 """
In a medium bowl, combine the water with the bouillon. Sprinkle in the
parsley and minced onion. Pour over the top of the turkey. Sprinkle
seasoning salt over the turkey.
""",
                                 """
Cover with foil, and bake in the preheated oven 3 1/2 to 4 hours, until
the internal temperature of the turkey reaches 180 degrees F (80
degrees C). For the last 45 minutes or so, remove the foil so the turkey
will brown nicely.
""",
                                 ])
        )
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "rice.ico"), imageMain: #imageLiteral(resourceName: "rice.image"), imageIngredients: #imageLiteral(resourceName: "rice.ingredients"),
                   titlePrimary: "Rice Pilaf", titleSecondary: "Classic", foodCategory: .vegetarian,
                   preparationTime: PreparationTime(hours: 5, minutes: 10), nutrition: 545, rating: 4,
                   author: Author(name: "Janine Perkins", photo: #imageLiteral(resourceName: "janine_perkins")),
                   ingredients:"""
1 (12 pound) whole turkey
6 tablespoons butter, divided
4 cups warm water
3 tablespoons chicken bouillon
2 tablespoons dried parsley
2 tablespoons dried minced onion
2 tablespoons seasoning salt
""",
                   recipeSteps: ["""
Preheat oven to 350 degrees F (175 degrees C). Rinse and wash turkey.
Discard the giblets, or add to pan if they are anyone's favorites.
""",
                                 """
Place turkey in a Dutch oven or roasting pan. Separate the skin over the
breast to make little pockets. Put 3 tablespoons of the butter on both
sides between the skin and breast meat. This makes for very juicy
breast meat.
""",
                                 """
In a medium bowl, combine the water with the bouillon. Sprinkle in the
parsley and minced onion. Pour over the top of the turkey. Sprinkle
seasoning salt over the turkey.
""",
                                 """
Cover with foil, and bake in the preheated oven 3 1/2 to 4 hours, until
the internal temperature of the turkey reaches 180 degrees F (80
degrees C). For the last 45 minutes or so, remove the foil so the turkey
will brown nicely.
""",
                                 ])
        )
        
        return recipes
    }
    
}
