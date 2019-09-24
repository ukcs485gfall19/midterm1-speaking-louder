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
        // request for the user's location
        locationManager.requestAlwaysAuthorization()
        // Do any additional setup after loading the view.
    }

    @IBAction func ViewLocation(_ sender: Any) {
        // Zoom to User's location
        Map.ViewLocation()
    }
    
    
}

extension ViewController: CLLocationManagerDelegate
{
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // if authorized, show the user's location
        Map.showsUserLocation = (status == .authorizedAlways)
    }
}

extension MKMapView
{
    func ViewLocation()
    {
        // get the coordinates of the user's location else return
        guard let coordinate = userLocation.location?.coordinate else { return }
        // set the region around the user
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        // zoom into the selected region
        setRegion(region, animated: true)
    }
}
