//
//  LocationManager.swift
//  NearMeApp
//
//  Created by Wanhar on 22/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import Foundation
import MapKit

class LocationManager: NSObject {
    
    private let locationManager = CLLocationManager()
    //@Published var location: CLLocation?   = nil
    var location: CLLocation?   = nil
    
    override init() {
        
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
        guard let location = locations.last else {
            return
        }
        
        self.location = location
    }
    
}
