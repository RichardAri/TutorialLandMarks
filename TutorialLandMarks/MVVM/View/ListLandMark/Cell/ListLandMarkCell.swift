//
//  ListLandMarkCell.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//

import SwiftUI

struct ListLandMarkCell: View {
    var landmark : LandMark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Text(landmark.name)
            Spacer()
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
        }
    }
}
