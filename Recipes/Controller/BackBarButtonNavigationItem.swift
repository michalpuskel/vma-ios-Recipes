//
//  BackBarButtonNavigationItem.swift
//  Recipes
//
//  Created by misko on 27/11/2018.
//  Copyright © 2018 FMFI UK. All rights reserved.
//

import UIKit

class BackBarButtonNavigationItem: UINavigationItem {
    
    override func awakeFromNib() {
        print("ok")
        
        backBarButtonItem?.image = #imageLiteral(resourceName: "miniList")
    }

}
