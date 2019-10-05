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

protocol RadiusViewControllerDelegate {
    func RadiusViewController(_ controller: RadiusViewController, didAddCoordinate coordinate: CLLocationCoordinate2D,radius: Double, identifier: String, note: String)
}

class RadiusViewController: UITableViewController {
    
    @IBOutlet weak var radiusField: UITextField!
    @IBOutlet weak var notesField: UITextField!
    @IBOutlet weak var AddButton: UIBarButtonItem!
    @IBOutlet weak var Map: MKMapView!
    
    var delegate: RadiusViewControllerDelegate?

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
        let coordinate = Map.centerCoordinate
        let radius = Double(radiusField.text!) ?? 0
        let identifier = NSUUID().uuidString
        let note = notesField.text
        delegate?.RadiusViewController(self, didAddCoordinate: coordinate, radius: radius, identifier: identifier, note: note!)
        
    }
}
