//
//  Monster.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation

class Monster: Mob {
    override init(id: Int, name: String, hitPoints: Int, armor: Armor, weapon: Weapon) {
        super.init(id: id, name: name, hitPoints: hitPoints, armor: armor, weapon: weapon)
        gold = randomNumber
    }
    
    var randomNumber: Int {
        Int.random(in: 1...5)
    }
}
