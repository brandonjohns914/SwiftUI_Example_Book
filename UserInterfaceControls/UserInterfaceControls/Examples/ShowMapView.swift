//
//  ShowMapView.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import MapKit
import SwiftUI

struct ShowMapView: View {
    
    //interactionsMode: [] will limit the user interaction
    //interactionsMode: [.zoom] gives the user ability to zoom in and out but not left and right 
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .frame(width: 400, height: 400)
    }
}

#Preview {
    ShowMapView()
}
