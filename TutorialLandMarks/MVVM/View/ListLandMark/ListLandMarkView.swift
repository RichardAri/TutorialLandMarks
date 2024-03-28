//
//  ListLandMarkView.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//

import SwiftUI

struct ListLandMarkView: View {
    
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationSplitView{
            List{
                ForEach(modelData.landMarks,id:\.id){
                    landmark in
                    NavigationLink{
                        DetailLandMarkView()
                    }label:{
                        ListLandMarkCell(landmark: landmark)
                    }
                }
            }
            .navigationTitle("LandMarks")
        }detail: {
            Text("Seleccione LandMark")
        }
    }
}

struct ListLandMarkView_Previews: PreviewProvider {
    static var previews: some View {
        ListLandMarkView()
            .environmentObject(ModelData())
    }
}
