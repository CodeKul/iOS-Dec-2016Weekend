//
//  ViewController.swift
//  LocationManagerDemo
//
//  Created by Codekul on 02/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    var locationManager : CLLocationManager?
    @IBOutlet var myLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager = CLLocationManager()
        locationManager?.requestAlwaysAuthorization()
        
        locationManager?.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager?.delegate = self
        
        locationManager?.startUpdatingLocation()
    
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        myLabel.text = "Lat: \(location.coordinate.latitude) Long: \(location.coordinate.longitude)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

