//
//  CardListTableViewController.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class CardListTableViewController: TableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "cardList")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "cardList")
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCardCell", for: indexPath) as! CardTableViewCell

        let recipe = recipes[indexPath.row]
        cell.recipeImage = recipe.imageMain
        cell.recipeTitle = recipe.titlePrimary

        return cell
    }

    // MARK: - Navigation
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
        
        performSegue(withIdentifier: "cardListSegueDetail", sender: nil)
    }

}
