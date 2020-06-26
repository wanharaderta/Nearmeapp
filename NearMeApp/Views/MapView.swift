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
    
    let landmarks: [Lankmark]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
        let annotations = self.landmarks.map(LankmarkAnnotation.init)
        mapView.addAnnotations(annotations)
    }
    

    
}
