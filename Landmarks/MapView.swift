//
//  MapView.swift
//  Landmarks
//
//  Created by William Souef on 29/01/2020.
//  Copyright © 2020 William Souef. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    
    func updateUIView(_ View: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        View.setRegion(region, animated: true)
    }
    }


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
