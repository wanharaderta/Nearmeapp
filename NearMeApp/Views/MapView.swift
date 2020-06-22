//
//  MapView.swift
//  NearMeApp
//
//  Created by Wanhar on 22/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit
import UIKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        
        let map = MKMapView()
        map.showsUserLocation = true
        //map.delegate = context.coordinator
        return map
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
    }
}
