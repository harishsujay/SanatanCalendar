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
        dropPin.subtitle = "School of Science"
        mapView.addAnnotation(dropPin)
        
        let regionRadius: CLLocationDistance = 1000
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        centerMapOnLocation(initialLocation)
        
//        // 1
//        let location = CLLocationCoordinate2D(
//            latitude: 51.50007773,
//            longitude: -0.1246402
//        )
//        // 2
//        let span = MKCoordinateSpanMake(0.05, 0.05)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
//        
//        //3
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = "Big Ben"
//        annotation.subtitle = "London"
//        mapView.addAnnotation(annotation)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}