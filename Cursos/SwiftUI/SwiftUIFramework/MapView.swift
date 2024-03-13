//
//  MapView.swift
//  SwiftUIFramework
//
//  Created by Fernando Cuatro on 3/12/24.
//

import SwiftUI
// para usar mapkit tenemos que importarlo
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // trabjamos con el objeto directamente
        // indicamos las constantes
        let coordinate = CLLocationCoordinate2D(latitude: 13.4448393, longitude: -89.0575308)
    
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
    
        // uiView.setRegion(region, animated: true);
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
