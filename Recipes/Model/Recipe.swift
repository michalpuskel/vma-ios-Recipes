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
                   recipeSteps: ["Preheat oven to 350 degrees F (175 degrees C). Rinse and wash turkey. Discard the giblets, or add to pan if they are anyone's favorites.",
                                 "Place turkey in a Dutch oven or roasting pan. Separate the skin over the breast to make little pockets. Put 3 tablespoons of the butter on both sides between the skin and breast meat. This makes for very juicy breast meat.",
                                 "In a medium bowl, combine the water with the bouillon. Sprinkle in the parsley and minced onion. Pour over the top of the turkey. Sprinkle seasoning salt over the turkey.",
                                 "Cover with foil, and bake in the preheated oven 3 1/2 to 4 hours, until the internal temperature of the turkey reaches 180 degrees F (80 degrees C). For the last 45 minutes or so, remove the foil so the turkey will brown nicely.",
                                 ]))
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "rice.ico"), imageMain: #imageLiteral(resourceName: "rice.image"), imageIngredients: #imageLiteral(resourceName: "rice.ingredients"),
                   titlePrimary: "Rice Pilaf", titleSecondary: "Classic", foodCategory: .vegetarian,
                   preparationTime: PreparationTime(hours: 1, minutes: 0), nutrition: 312, rating: 3,
                   author: Author(name: "Kyle McCaulley", photo: #imageLiteral(resourceName: "kyle_mccaulley")),
                   ingredients:"""
2 tablespoons butter
2 tablespoons olive oil
1/2 onion, chopped
2 cups long-grain white rice
3 cups chicken stock
1 1/2 teaspoons salt
1 pinch saffron (optional)
1/4 teaspoon cayenne pepper
""",
                   recipeSteps: ["Preheat oven to 350 degrees F (175 degrees C).",
                                 "Melt butter and olive oil in a large saucepan over medium heat. Add onion; cook and stir until onion is lightly browned, 7 to 8 minutes. Remove from heat.",
                                 "Combine rice and onion mixture in a 9x13-inch casserole dish placed on a baking sheet. Stir thoroughly to coat the rice.",
                                 "Combine chicken stock, salt, saffron, and cayenne pepper in a saucepan. Bring to a boil, reduce heat to low, and simmer for 5 minutes.",
                                 "Pour chicken stock mixture over rice in the casserole dish and stir to combine. Spread mixture evenly along the bottom of the pan. Cover tightly with heavy-duty aluminum foil.",
                                 "Bake in the preheated oven for 35 minutes. Remove from oven and allow to rest, covered, for 10 minutes. Remove foil and fluff with a fork to separate the grains of rice.",
                                 ]))
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "pancakes.ico"), imageMain: #imageLiteral(resourceName: "pancakes.image"), imageIngredients: #imageLiteral(resourceName: "pancakes.ingredients"),
                   titlePrimary: "Pumpkin Pancakes", titleSecondary: "", foodCategory: .dessert,
                   preparationTime: PreparationTime(hours: 0, minutes: 40), nutrition: 278, rating: 5,
                   author: Author(name: "CookieEater", photo: #imageLiteral(resourceName: "cookieeater")),
                   ingredients:"""
1 1/2 cups milk
1 cup pumpkin puree
1 egg
2 tablespoons vegetable oil
2 tablespoons vinegar
2 cups all-purpose flour
3 tablespoons brown sugar
2 teaspoons baking powder
1 teaspoon baking soda
1 teaspoon ground allspice
1 teaspoon ground cinnamon
1/2 teaspoon ground ginger
1/2 teaspoon salt
""",
                   recipeSteps: ["In a bowl, mix together the milk, pumpkin, egg, oil and vinegar. Combine the flour, brown sugar, baking powder, baking soda, allspice, cinnamon, ginger and salt in a separate bowl. Stir into the pumpkin mixture just enough to combine.",
                                 "Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.",
                                 ]))
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "sausage.ico"), imageMain: #imageLiteral(resourceName: "sausage.image"), imageIngredients: #imageLiteral(resourceName: "sausage.ingredients"),
                   titlePrimary: "Sheboygan Brats", titleSecondary: "Grilled", foodCategory: .meat,
                   preparationTime: PreparationTime(hours: 0, minutes: 52), nutrition: 534, rating: 0,
                   author: Author(name: "Chef John", photo: #imageLiteral(resourceName: "chef_john")),
                   ingredients:"""
1/4 cup butter
2 medium onions, thinly sliced
3 cloves garlic, chopped
4 (12 ounce) bottles dark beer
2 pounds fresh bratwurst
10 hot dog buns
""",
                   recipeSteps: ["Preheat an outdoor grill for high heat and lightly oil grate.",
                                 "Melt butter in a large skillet over medium heat, cook and stir the sliced onions for 5 to 10 minutes, or until tender and translucent. Add the chopped garlic and cook, stirring, for an additional 2 minutes. Add the beer and let simmer while the bratwursts are cooking on the grill.",
                                 "Grill the bratwursts for 30 to 35 minutes, turning often. Be careful not to poke holes in the casing. Remove the bratwursts from the grill and simmer in the beer sauce for an additional 10 to 15 minutes. Serve hot with onions on the rolls.",
                                 ]))
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "fish.ico"), imageMain: #imageLiteral(resourceName: "fish.image"), imageIngredients: #imageLiteral(resourceName: "fish.ingredients"),
                   titlePrimary: "Rainbow Trout", titleSecondary: "Baked Fresh", foodCategory: .vegetarian,
                   preparationTime: PreparationTime(hours: 0, minutes: 30), nutrition: 373, rating: 2,
                   author: Author(name: "muqiblue", photo: #imageLiteral(resourceName: "muqiblue")),
                   ingredients:"""
2 teaspoons olive oil, or to taste
2 whole rainbow trout, gutted and cleaned, heads and tails still on
1/4 teaspoon dried dill weed
1/4 teaspoon dried thyme
salt and freshly ground black pepper to taste
1/2 large onion, sliced
2 thin slices lemon (optional)
2 tablespoons hot water
""",
                   recipeSteps: ["Preheat oven to 400 degrees F (200 degrees C). Grease a 9x13-inch baking dish with about 1 teaspoon olive oil.",
                                 "Place trout in the prepared baking dish and coat with remaining olive oil. Season the inside and outside of fish with dill, thyme, and salt. Stuff each fish with onion slices; grind pepper over the top. Place 1 lemon slice on each fish.",
                                 "Bake in the preheated oven for 10 minutes; add water to dish. Continue baking until fish flake easily with a fork, about 10 minutes more.",
                                 ]))
        
        recipes.append(
            Recipe(imagePreview: #imageLiteral(resourceName: "cake.ico"), imageMain: #imageLiteral(resourceName: "cake.image"), imageIngredients: #imageLiteral(resourceName: "cake.ingredients"),
                   titlePrimary: "Jenny's Cake", titleSecondary: "Black Forest", foodCategory: .dessert,
                   preparationTime: PreparationTime(hours: 1, minutes: 0), nutrition: 477, rating: 1,
                   author: Author(name: "Vanessa Greaves", photo: #imageLiteral(resourceName: "vanessa_greaves")),
                   ingredients:"""
1 cup milk
1 tablespoon vinegar
1 3/4 cups all-purpose flour
2 cups white sugar
3/4 cup unsweetened cocoa powder
1 teaspoon baking powder
2 teaspoons baking soda
1/2 teaspoon salt
2 eggs
1/2 cup vegetable oil
1 cup strong brewed coffee, cold
1 teaspoon vanilla extract
1 (21 ounce) can cherry pie filling
1/2 cup cherry liqueur
""",
                   recipeSteps: ["Preheat oven to 350 degrees F (175 degrees C). Grease and flour two 8 inch cake pans. Make sour milk by combining milk and vinegar. Set aside.",
                                 "Sift together the flour, sugar, cocoa powder, baking soda, baking powder and salt. Set aside. In a large bowl, whisk together the eggs, oil, coffee and vanilla. Stir in the sour milk. Gradually beat in the flour mixture, mixing just until incorporated.",
                                 "Pour batter into prepared pans. Bake in the preheated oven for 30 minutes, or until a toothpick inserted into the center of the cake comes out clean. Allow cake layers to cool completely before filling.",
                                 "To make the cherry filling: Combine the cherry pie filling and cherry liquor. Refrigerate cherry mixture until chilled, then fill cake.",
                                 ]))
        
        return recipes
    }
    
}
