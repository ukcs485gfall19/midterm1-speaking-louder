//
//  unit.swift
//  Geocentric
//
//  Created by Caskey, Damon V. on 10/4/19.
//  Copyright © 2019 Team Speaking Louder. All rights reserved.
//

import Foundation

// Current unit selected by user.
var int_type:DistanceUnit = .meter

// Caskey, Damon V.
// 2019-10-04
//
// Basic structure for distance units.
enum DistanceUnit {
    case foot
    case kilometer
    case meter
    case mile
}

// Caskey, Damon V.
// 2019-10-04
//
// User friendly titles for buttons, text output, etc.
extension DistanceUnit{
    var Label:String{
        switch self{
        case .foot: return "Feet"
        case .kilometer: return "Kilometers"
        case .meter: return "Meters"
        case .mile: return "Miles"
        }
    }
}

// Caskey, Damon V.
// 2019-10-04
//
// Calculation multipliers (vs. meters).
extension DistanceUnit{
    var Mutiplier:Double{
        switch self{
        case .foot: return 0.3048
        case .kilometer: return 1000.0
        case .meter: return 1.0
        case .mile: return 1609.34
        }
    }
}

// Caskey, Damon V.
// 2019-10-04
//
// Apply multiplier to distance based on selected unit and
// return result.
extension DistanceUnit{
    func ApplyUnit(unit: DistanceUnit, size: Double) ->Double{
        switch unit {
        case .foot:
            return size * DistanceUnit.foot.Mutiplier
        case .kilometer:
            return size * DistanceUnit.kilometer.Mutiplier
        case .meter:
            return size * DistanceUnit.meter.Mutiplier
        case .mile:
            return size * DistanceUnit.mile.Mutiplier
        }
    }
}
