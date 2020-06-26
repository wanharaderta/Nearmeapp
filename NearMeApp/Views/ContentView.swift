//
//  ContentView.swift
//  NearMeApp
//
//  Created by Wanhar on 22/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    @State private var search: String = ""
    @State private var landmarks = [Lankmark]()
    
    private func getNearByLandmarks(){
        
        guard let location = self.locationManager.location else {
            return
        }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = self.search
        request.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            
            guard let response  = response, error == nil else {
                return
            }
            
            let mapItems    = response.mapItems
            self.landmarks  = mapItems.map {
                Lankmark(placemark: $0.placemark)
            }
        }
    }
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            MapView(landmarks: self.landmarks)
            
            TextField("Search", text:self.$search, onEditingChanged: { _ in } ) {
                self.getNearByLandmarks()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .offset(y: 44)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
