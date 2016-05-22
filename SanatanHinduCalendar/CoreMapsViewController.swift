//
//  CoreMapsViewController.swift
//  SanatanHinduCalendar
//
//  Created by Harish Setty on 21/05/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import Foundation
import MapKit

class CoreMapsViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var locationmgr : CLLocationManager!
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        locationmgr = CLLocationManager()
        locationmgr.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        // Set map view delegate with controller
        self.mapView.delegate = self
        
        let initialLocation = CLLocation(latitude: -37.808734, longitude: 144.963770)
        let rmitLocation = CLLocationCoordinate2DMake(-37.808734, 144.963770)
        
        // Drop a pin
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = rmitLocation
        dropPin.title = "RMIT University"
        dropPin.subtitle = "LaTrobe Street"
        
        mapView.addAnnotation(dropPin)
        
        let regionRadius: CLLocationDistance = 1000
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(initialLocation)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}