//
//  Character Class.swift
//  Gauntlet
//
//  Created by Melissa Chinnick on 2017-11-27.
//  Copyright © 2017 Needs Food Badly. All rights reserved.
//

import Foundation

class Character {
    var name: String
    var hp: Int
    var atk: Int
    var spd: Int
    var def: Int
    var positionX: Int = 0
    var positionY: Int = 0
    
    // initialize character with a default position of (0, 0)
    init(name: String, hp: Int, atk: Int, spd: Int, def: Int) {
        self.name = name
        self.hp = hp
        self.atk = atk
        self.spd = spd
        self.def = def
    }
    
    // initialize character with a position that is not (0, 0)
    init(name: String, hp: Int, atk: Int, spd: Int, def: Int, positionX: Int, positionY: Int) {
        self.name = name
        self.hp = hp
        self.atk = atk
        self.spd = spd
        self.def = def
        self.positionX = positionX
        self.positionY = positionY
    }
    
    func moveLeft() {
        positionX -= 1
        print("(\(positionX), \(positionY))")
    }
    
    func moveRight() {
        positionX += 1
        print("(\(positionX), \(positionY))")
    }
    
    func moveDown() {
        positionY -= 1
        print("(\(positionX), \(positionY))")
    }
    
    func moveUp() {
        positionY += 1
        print("(\(positionX), \(positionY))")
    }
    
    func getHit() {
        hp -= 1
        if hp == 0 {
            die()
        }
        print("Current HP: \(hp)")
    }
    
    func die() {
        print("\(name) has died.")
    }
}

class Playable: Character {
    var mag: Int
    
    init(name: String, hp: Int, atk: Int, spd: Int, def: Int, mag: Int) {
        self.mag = mag
        super.init(name: name, hp: hp, atk: atk, spd: spd, def: def)
    }
}

class Enemy: Character {
    init(name: String, hp: Int, atk: Int, spd: Int) {
        super.init(name: name, hp: hp, atk: atk, spd: spd, def: 0)
    }
    
    init(name: String, hp: Int, atk: Int, spd: Int, positionX: Int, positionY: Int) {
        super.init(name: name, hp: hp, atk: atk, spd: spd, def: 0, positionX: positionX, positionY: positionY)
    }
}
