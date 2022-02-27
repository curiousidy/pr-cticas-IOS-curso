//
//  ContentView.swift
//  map
//
//  Created by idaira aleman quintana on 18/2/22.
//

import SwiftUI
import MapKit
struct IdentifiablePlace: Identifiable {
    let id: UUID
    let location: CLLocationCoordinate2D
    init(id: UUID = UUID(), lat: Double, long: Double) {
        self.id = id
        self.location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long)
    }
}

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.334_900,
                                       longitude: -122.009_020),
        latitudinalMeters: 750,
        longitudinalMeters: 750
    )
    @state pin = MKAnnotationView(anotation:MKAnnotation, reuseIdentifier: : "Hello")
    var body: some View {
        Map(coordinateRegion: $region)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
