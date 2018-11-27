//
//  TableViewController.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let recipes = Recipe.recipes()
    var selectedRecipeId: Int = 0
    
    var originalNavBarBorder: UIImage?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarController?.tabBar.isHidden = false
        navigationController?.toolbar.isHidden = true
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        hidesBottomBarWhenPushed = false
        
        navigationController?.navigationBar.shadowImage = originalNavBarBorder
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Recipes"
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        originalNavBarBorder = navigationController?.navigationBar.shadowImage
        
        navigationController?.navigationBar.tintColor = .darkGray
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    // MARK: - Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRecipeId = indexPath.row
        
        hidesBottomBarWhenPushed = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        RecipeVC.recipeId = selectedRecipeId
    }

}
