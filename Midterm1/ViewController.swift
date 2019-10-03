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
    
    @IBAction func SendAlert(_ sender: Any) {
        // Send a test message as an alert
        displayAlert(withAlert: "Test", message: "Hello World!")
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

extension UIViewController
{
    func displayAlert(withAlert title: String?, message: String?)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

func checkUnit(Unit: String, size: Double) -> Double {
    switch Unit {
    case "meters":
        return size
    case "feet":
        return size*0.3048
    case "miles":
        return size*1609.34
    case "kilometers":
        return size*1000
    default:
        return size
    }
}
