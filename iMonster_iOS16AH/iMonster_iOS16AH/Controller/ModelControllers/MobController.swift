//
//  MobController.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation

class MobController {
    
    var mobs: [Mob] = []
    
    func create(mob: Mob) {
        mobs.append(mob)
    }
    
    func update(mob: Mob) {
        guard let mobIndex = mobs.firstIndex(of: mob) else { return }
        if mob.hitPoints <= 0 {
            kill(mob: mob)
        } else {
            mobs[mobIndex] = mob
        }
    }
    
    func kill(mob: Mob) {
        guard let mobIndex = mobs.firstIndex(of: mob) else { return }
        mobs.remove(at: mobIndex)
    }
    
    func fight(attacking: Mob, attacked: Mob) {
        while attacking.hitPoints > 0 && attacked.hitPoints > 0 {
            print("\(attacking.name) is attacking \(attacked.name)")
            print("\(attacked.name) has \(attacked.hitPoints) hit points and \(attacking.name) does \(attacking.weapon.damageGiven) damage, but \(attacked.name) absorbs \(attacked.armor.damageAbsorbed) damage")
            attacked.hitPoints -= attacking.weapon.damageGiven - attacked.armor.damageAbsorbed
            update(mob: attacked)
            print("Thanks to \(attacking.name), \(attacked.name) now has \(attacked.hitPoints) hit points! \n")
            print()
            print("\(attacked.name) is retaliating!")
            print("\(attacking.name) has \(attacking.hitPoints) hit points and \(attacked.name) does \(attacked.weapon.damageGiven) damage, but \(attacking.name) absorbs \(attacking.armor.damageAbsorbed) damage")
            attacking.hitPoints -= attacked.weapon.damageGiven - attacking.armor.damageAbsorbed
            update(mob: attacking)
            print("Thanks to \(attacked.name), \(attacking.name) now has \(attacking.hitPoints) hit points! \n")
            print()
        }
        
        if let player = attacked as? Player {
            if player.hitPoints > 0 {
                player.loot(mob: attacking)
                
            } else if let player = attacking as? Player {
                if player.hitPoints > 0 {
                    player.loot(mob: attacking)
                }
            }
        }
    }
}
