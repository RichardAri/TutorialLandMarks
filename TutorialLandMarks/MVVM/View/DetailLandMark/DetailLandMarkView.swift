//
//  DetailLandMarkView.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//
import SwiftUI
import MapKit

struct DetailLandMarkView: View {
    
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    LandMarkMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                        .frame(height: 300)
                    LandMarkImage(image: Image("icybay").resizable())
                        .offset(y:-130)
                        .padding(.bottom,-130)
    
                }
                VStack{
                    HStack{
                        Text("Nombre Del Lugar")
                        Spacer()
                    }
                    HStack{
                        Text("Nombre Del Parque")
                            .font(.subheadline)
                        Spacer()
                        Text("Estado Del Parque")
                            .font(.subheadline)
                    }
                    .foregroundStyle(.secondary)
                    Divider()
                    VStack{
                        HStack{
                            Text("About")
                                .font(.title2)
                            Spacer()
                        }
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum")
                    }
                }
                .padding()
            }
            .navigationTitle("titulo")
        }
        .ignoresSafeArea()
    }
}
#Preview {
    DetailLandMarkView()
}
