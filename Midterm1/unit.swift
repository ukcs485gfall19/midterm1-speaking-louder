//
//  unit.swift
//  Geocentric
//
//  Created by Caskey, Damon V. on 10/4/19.
//  Copyright © 2019 Team Speaking Louder. All rights reserved.
//

import Foundation

// Caskey, Damon V.
// 2019-10-04
//
// Basic structure for distance units.
enum UnitList {
    case meter
    case kilometer
    case foot
    case mile
    
    // User friendly labels.
    var Label:String{
        switch self{
        case .foot: return "Feet"
        case .kilometer: return "Kilometers"
        case .meter: return "Meters"
        case .mile: return "Miles"
        }
    }
    
    // Calculation multipliers (vs. meters).
    var Mutiplier:Double{
        switch self{
        case .foot: return 0.3048
        case .kilometer: return 1000.0
        case .meter: return 1.0
        case .mile: return 1609.34
        }
    }
    
    // Calculate distance based on selected unit.
    func ApplyUnit(unit: UnitList, size: Double) ->Double{
        switch unit {
        case .foot:
            return size * UnitList.foot.Mutiplier
        case .kilometer:
            return size * UnitList.kilometer.Mutiplier
        case .meter:
            return size * UnitList.meter.Mutiplier
        case .mile:
            return size * UnitList.mile.Mutiplier
        }
    }
}
