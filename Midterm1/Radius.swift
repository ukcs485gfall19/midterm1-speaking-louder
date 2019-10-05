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
    
    @IBOutlet weak var radiusField: UITextField!
    @IBOutlet weak var notesField: UITextField!
    @IBOutlet weak var AddButton: UIBarButtonItem!
    @IBOutlet weak var Map: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = AddButton
        AddButton.isEnabled = false
    }
    
    @IBAction func zoomToUser(sender: AnyObject)
    {
        Map.ViewLocation()
    }
    

    @IBAction func textFieldEditChange(sender: UITextField)
    {
        AddButton.isEnabled = !radiusField.text!.isEmpty && !notesField.text!.isEmpty
    }
    
    var radiusNumber: Int = 0
    @IBAction func radiusAction(_ sender: Any) {
        radiusNumber = Int(radiusField.text!)!
    }
    
    @IBAction private func onAdd(sender: AnyObject)
    {
        let coords = Map.centerCoordinate
        let radius = Double(radiusField.text!)
        let note = notesField.text
        print("foo")
    }
}
