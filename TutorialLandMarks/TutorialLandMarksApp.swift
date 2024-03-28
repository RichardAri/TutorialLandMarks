//
//  TutorialLandMarksApp.swift
//  TutorialLandMarks
//
//  Created by Richard on 20/03/24.
//

import SwiftUI

@main
struct TutorialLandMarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
