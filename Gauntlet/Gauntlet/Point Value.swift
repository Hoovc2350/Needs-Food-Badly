//
//  Point Value.swift
//  Gauntlet
//
//  Created by Melissa Chinnick on 2017-11-29.
//  Copyright © 2017 Needs Food Badly. All rights reserved.
//

import Foundation

/* Destroying enemy generator = 5pts
   Defeating enemy = 10 pts
   Eating food = 15 pts
   Treasure chests = 100 pts
   Keys = 100 pts
   Thief's gold = 500 pts
   Finding exit = ?? pts
*/

enum PointValue: Int {
    case generator = 5
    case enemy = 10
    case food = 15
    case treasure, key = 100
    case exit = 500
}
