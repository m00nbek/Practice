//
//  Algorithms.swift
//  Practice
//
//  Created by m00nbek Melikulov on 11/5/22.
//

import Foundation

class Algorithms {
    
    // MARK: - Count Occurrences
    static func countOccurrences<T: Comparable>(of key: T, in array: [T]) -> Int {
        var leftBoundary: Int {
            var low = 0
            var high = array.count
            while low < high {
                let midIndex = low + (high - low)/2
                print("Low: \(low)")
                print("High: \(high)")
                print("MidIndex: \(midIndex)")
                if array[midIndex] < key {
                    low = midIndex + 1
                } else {
                    high = midIndex
                }
            }
            return low
        }
        
        var rightBoundary: Int {
            var low = 0
            var high = array.count
            while low < high {
                let midIndex = low + (high - low)/2
                if array[midIndex] > key {
                    high = midIndex
                } else {
                    low = midIndex + 1
                }
            }
            return low
        }
        
        let result = rightBoundary - leftBoundary
        
        print("LeftBoundary: \(leftBoundary)")
        print("RightBoundary: \(rightBoundary)")
        print("Result: \(result)")
        
        return result
    }
}
