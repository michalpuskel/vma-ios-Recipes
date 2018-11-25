//
//  MiniListTableViewController.swift
//  Recipes
//
//  Created by misko on 25/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class MiniListTableViewController: TableViewController {

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeMiniCell", for: indexPath)
        
        let recipe = recipes[indexPath.row]
        cell.imageView?.image = recipe.imagePreview
        cell.textLabel?.text = recipe.titlePrimary

        return cell
    }

}
