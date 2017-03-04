//
//  ViewController.swift
//  MapViewDemo
//
//  Created by Codekul on 04/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet var mapView : MKMapView!
    
    var locationManager : CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 18.5204, longitude: 73.8567)
        pin.title = "Pune"
        pin.subtitle = "Maharashtra"
        mapView.addAnnotation(pin)
    
        locationManager = CLLocationManager()
        locationManager?.requestAlwaysAuthorization()
        locationManager?.delegate = self
        
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        
        print("Lat: \(location.coordinate.latitude) Long: \(location.coordinate.longitude)")
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

