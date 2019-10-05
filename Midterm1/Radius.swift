//
//  Radius.swfit.swift
//  Geocentric
//
//  Created by MacBook Pro on 10/4/19.
//  Copyright © 2019 Nathan Church. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Radius: UITableViewController {
    
    @IBOutlet weak var radius: UITextField!
    @IBOutlet weak var Notes: UITextField!
    @IBOutlet weak var AddButton: UIBarButtonItem!
    @IBOutlet weak var Map: MKMapView!
    
    var radiusNumber: Int = 0
    @IBAction func radiusAction(_ sender: Any) {
        radiusNumber = Int(radius.text!)!
    }
}
