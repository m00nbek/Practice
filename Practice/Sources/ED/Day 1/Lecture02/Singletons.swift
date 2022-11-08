//
//  Singletons.swift
//  Practice
//
//  Created by m00nbek Melikulov on 11/8/22.
//

import UIKit

// MARK: -- Singletons

class Singletons {
    
    struct LoggedInUser {}
    
    // Singleton
    class ApiClient {
        
        // in Swift `static let` is lazy loaded
        static let shared = ApiClient()
        
        // making the initializer private prevents the people from creating instance of this class
        private init() {}
        
        func login(completion: (LoggedInUser) -> Void) {}
    }
    
    // singleton
    let singleTon = URLSession.shared
    let session = URLSession()
    
    // Difference between `Singleton` with a capital `S` and lowercase `s` is
    // `singleton` is for conveince, we can create our more instances
    // `Singleton` by the book we shouldn't be able to create more instances
    
    class MockApiClient: ApiClient {
        // to be able to test we can subclass
    }
    
    class LoginViewController: UIViewController {
        // for testing
        var api = ApiClient.shared
        
        func didTapLoginButton() {
            api.login { user in
                // show next screen
            }
        }
    }
}
