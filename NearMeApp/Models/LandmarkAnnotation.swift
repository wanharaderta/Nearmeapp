//
//  LandmarkAnnotation.swift
//  NearMeApp
//
//  Created by Wanhar on 26/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import Foundation
import MapKit

final class LankmarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark:Lankmark){
        self.title  = landmark.name
        self.coordinate = landmark.coordinator
    }
    
    
}
