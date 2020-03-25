//
//  Player.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation

class Player: Mob {
    func loot(mob: Mob) {
        gold += mob.gold
        print("\(name) gained \(mob.gold) gold from \(mob.name)")
    }
}
