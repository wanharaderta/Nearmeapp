//
//  Landmark.swift
//  NearMeApp
//
//  Created by Wanhar on 26/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import Foundation
import MapKit

struct Lankmark {

    let placemark: MKPlacemark
    
    var id: UUID {
        return  UUID()
    }
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var coordinator: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
}
