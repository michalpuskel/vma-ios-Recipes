//
//  CardListTableViewController.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class CardListTableViewController: TableViewController {

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCardCell", for: indexPath) as! CardTableViewCell

        let recipe = recipes[indexPath.row]
        cell.recipeImage = recipe.imageMain
        cell.recipeTitle = recipe.titlePrimary

        return cell
    }

}
