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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Concurrency
        Concurrency.asyncVSsync()
        
        // Algorithms
        let array = [ 0, 1, 1, 3, 3, 3, 3, 6, 8, 10, 11, 11 ]
        print(Algorithms.countOccurrences(of: 3, in: array))
    }
}
