//
//  unit.swift
//  Geocentric
//
//  Created by user158055 on 10/4/19.
//  Copyright © 2019 Nathan Church. All rights reserved.
//

import Foundation

struct UnitMultiplier {
    static let meter     = 1.0
    static let kilometer = 1000.0
    static let foot      = 0.3048
    static let mile      = 1609.34
}

// Caskey, Damon V
// 2019-10-04
//
// Calculate units based on user selection.
func checkUnit(Unit: String, size: Double) -> Double {
    switch Unit {
    case "meters":
        return size * UnitMultiplier.meter
    case "feet":
        return size * UnitMultiplier.foot
    case "miles":
        return size * UnitMultiplier.mile
    case "kilometers":
        return size * UnitMultiplier.kilometer
    default:
        return size
    }
}
