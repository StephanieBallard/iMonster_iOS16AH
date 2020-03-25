//
//  Inventory.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

protocol Inventory {
    var name: String { get }
}

struct Armor: Inventory {
    var name: String
    var damageAbsorbed: Int
}

struct Weapon: Inventory {
    var name: String
    var damageGiven: Int
}
