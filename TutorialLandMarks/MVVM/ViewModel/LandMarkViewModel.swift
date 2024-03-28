//
//  LandMarkViewModel.swift
//  TutorialLandMarks
//
//  Created by Richard on 27/03/24.
//

import Foundation

class ModelData:ObservableObject {
    @Published var landMarks: [LandMark] = load("LandMarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main bundle")
    }
    
    do {
        let data = try Data(contentsOf: file)
        let decoder = JSONDecoder()
        let result = try decoder.decode(T.self, from: data)
        return result
    } catch {
        fatalError("Could not parse \(filename) as \(T.self): \n \(error)")
    }
}
