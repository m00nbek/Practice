//
//  Attributes.swift
//  Practice
//
//  Created by m00nbek Melikulov on 10/31/22.
//

import Foundation

class Attributes {
    
    init() {
        
        // AssociatedType
        associatedType()
    }
}

// MARK: - AssociatedType
extension Attributes {
    
    func associatedType() {
        var names = NameDatabase()
        names.add(item: "James")
        names.add(item: "Jess")
    }
    
    struct NameDatabase: ItemStoring {
        var items = [String]()
    }
}

protocol ItemStoring {
    associatedtype DataType
    
    var items: [DataType] { get set}
    mutating func add(item: DataType)
}

extension ItemStoring {
    mutating func add(item: DataType) {
        items.append(item)
    }
}
