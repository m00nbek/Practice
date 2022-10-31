//
//  Concurrency.swift
//  Practice
//
//  Created by m00nbek Melikulov on 10/31/22.
//

import Foundation

class Concurrency {
    
    // MARK: - asyncVSsync
    static func asyncVSsync() {
        let queue = DispatchQueue.global(qos: .userInitiated)
        
        queue.sync {
            // sync blocks the queue and waits for it to complete
            // so "wadup" will NOT be printed until this block of code completes.
            
            // async doesn't block the queue
            // so "wadup" will be printed before this block of code completes.
            
            print("runnin...")
            
            for _ in 0..<10000000 {
                // loopin baby
            }
            
            print("finished")
        }
        
        queue.async {
            print("wadup")
        }
    }
}
