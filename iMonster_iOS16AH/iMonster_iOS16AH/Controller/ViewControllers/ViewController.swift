//
//  ViewController.swift
//  iMonster_iOS16AH
//
//  Created by Stephanie Ballard on 3/24/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mobController = MobController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rustySword = Weapon(name: "A rusty sword", damageGiven: 10)
        let clothArmor = Armor(name: "Cloth Armor", damageAbsorbed: 2)
        
        let claws = Weapon(name: "Claws", damageGiven: 3)
        let shellArmor = Armor(name: "Shell", damageAbsorbed: 5)
        
        let player = Player(id: 0, name: "Stephanie", hitPoints: 100, armor: clothArmor, weapon: rustySword)
        let crab = Monster(id: 1, name: "A Crab", hitPoints: 10, armor: shellArmor, weapon: claws)
        
        mobController.create(mob: player)
        mobController.create(mob: crab)
        
        mobController.fight(attacking: crab, attacked: player)
    }


}

