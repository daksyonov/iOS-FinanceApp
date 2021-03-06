//
//  Category.swift
//  iOS-FinanceApp
//
//  Created by Dmitry Aksyonov on 02.07.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var id = UUID().uuidString
    @objc dynamic var name: String?
    
    convenience init(id: String, name: String) {
        self.init()
        self.id = id
        self.name = name
    }
    
    override var description: String {
        get {
            return """
            \nid: \(id)
            name: \(name ?? "")
            """
        }
    }
}

struct CategoryTotal {
    let name: String
    let balance: Int
    let uuid = UUID()
}
