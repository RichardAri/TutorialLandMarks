//
//  LandMarkMap.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//

import SwiftUI
import MapKit

struct LandMarkMap: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        VStack{
            Map(initialPosition: .region(region))
        }
    }
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    LandMarkMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
