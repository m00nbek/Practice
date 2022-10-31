//
//  RootController.swift
//  Practice
//
//  Created by m00nbek Melikulov on 10/31/22.
//

import UIKit

class RootConasdatroller: UINavigationController {
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationBar.isHidden = true
    }
}
