//
//  FoodCategory.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import Foundation

enum FoodCategory {
    case vegetarian
    case meat
    case dessert
}

extension FoodCategory {
    var navTitle: String {
        switch self {
        case .vegetarian:
            return "HEALTHY MEALS"
        case .meat:
            return "MEAT RECIPES"
        case .dessert:
            return "CAKES"
        }
    }
}
