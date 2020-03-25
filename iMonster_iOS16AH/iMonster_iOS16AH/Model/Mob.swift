//
//  Mob.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

protocol MobProtocol {
    var id: Int { get } // { get } so it can't be changed
    var name: String { get }
    var hitPoints: Int { get set }
    var weapon: Weapon { get }
    var armor: Armor { get }
    var gold: Int { get set }
}

class Mob: MobProtocol, Equatable {
    static func == (lhs: Mob, rhs: Mob) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: Int
    var name: String
    var hitPoints: Int
    var weapon: Weapon
    var armor: Armor
    var gold: Int
    
    init(id: Int, name: String, hitPoints: Int, armor: Armor, weapon: Weapon) {
        self.id = id
        self.name = name
        self.hitPoints = hitPoints
        self.weapon = weapon
        self.armor = armor
        self.gold = 0
    }
}
