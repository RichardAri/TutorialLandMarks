//
//  LandMarkImage.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//

import SwiftUI

struct LandMarkImage: View {
    var image : Image
    var body: some View {
        VStack{
            image.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay{
                    Circle().stroke(.white,lineWidth: 4)
                }
                .shadow(radius: 7)
                .padding()
                .scaledToFit()
        }
    }
}

#Preview {
    LandMarkImage(image: Image(systemName: "iphone"))
}
