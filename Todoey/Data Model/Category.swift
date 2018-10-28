//
//  Category.swift
//  Todoey
//
//  Created by Joseph Kim on 10/23/18.
//  Copyright © 2018 Joseph Kim. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
