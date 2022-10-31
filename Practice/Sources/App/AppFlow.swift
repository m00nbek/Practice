//
//  AppFlow.swift
//  Practice
//
//  Created by m00nbek Melikulov on 10/31/22.
//

import UIKit

final public class AppFlow {
    let navigationController: UINavigationController
    
    var homeVC = HomeController()
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.setViewControllers([homeVC], animated: false)
    }
}
