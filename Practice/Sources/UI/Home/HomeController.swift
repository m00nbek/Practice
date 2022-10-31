//
//  HomeController.swift
//  Practice
//
//  Created by m00nbek Melikulov on 10/31/22.
//

import UIKit

class HomeController: UIViewController {
    
    let _view = HomeView()
    
    override func loadView() {
        view = _view
    }
    
}
