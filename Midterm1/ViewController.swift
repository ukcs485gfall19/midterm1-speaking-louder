//
//  ViewController.swift
//  Midterm1
//
//  Created by Nathan Church on 9/17/19.
//  Copyright © 2019 Nathan Church. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        // Do any additional setup after loading the view.
    }

    @IBAction func ViewLocation(_ sender: Any) {
        // Zoom to  User's location
    }
    
    
}

extension ViewController: CLLocationManagerDelegate
{
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        Map.showsUserLocation = (status == .authorizedAlways)
    }
}
