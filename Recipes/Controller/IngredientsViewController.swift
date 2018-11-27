//
//  IngredientsViewController.swift
//  Recipes
//
//  Created by misko on 27/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class IngredientsViewController: BorderLessViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "backArrow")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "backArrow")
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
