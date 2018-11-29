//
//  RecipeStepViewController.swift
//  Recipes
//
//  Created by misko on 28/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class RecipeStepViewController: RecipeViewController {
    
    var stepId: Int = 0
    
    private var nextStepId: Int {
        return stepId + 1
    }
    
    @IBOutlet private weak var programmableToolBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(stepId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setBottomToolBarButton()
    }
    
    private func setBottomToolBarButton() {
        if nextStepId < RecipeVC.recipes.count {
            navigationController?.toolbar.barTintColor = .white
            programmableToolBarButtonItem.tintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
            programmableToolBarButtonItem.title = "STEP \(nextStepId)"
        } else {
            navigationController?.toolbar.barTintColor = #colorLiteral(red: 0.2980392157, green: 0.8509803922, blue: 0.3921568627, alpha: 1)
            programmableToolBarButtonItem.tintColor = .white
            programmableToolBarButtonItem.title = "VIEW ALL RECIPES"
        }
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
