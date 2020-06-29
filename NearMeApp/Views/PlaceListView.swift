//
//  PlaceListView.swift
//  NearMeApp
//
//  Created by Wanhar on 28/06/20.
//  Copyright © 2020 Wanhar. All rights reserved.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [Lankmark]
    var onTap: () -> ()
    var body: some View {
        VStack {
            HStack {
                EmptyView()
            }.frame(width: UIScreen.main.bounds.width, height: 60)
            .background(Color.yellow)
            .gesture(TapGesture()
                        .onEnded(self.onTap)
            )
            
            
            List(self.landmarks, id: \.id) { lankmark in
                Text(lankmark.name)
            }.animation(nil)
        }.cornerRadius(16)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [Lankmark(placemark: MKPlacemark())], onTap: {})
    }
}
