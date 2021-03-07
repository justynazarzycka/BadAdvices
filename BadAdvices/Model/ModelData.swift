//
//  ModelData.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 22/02/2021.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var advices: [Advice] = load("advices.json")
    
    // TODO: - fing a better way to do this
    func getRandomAdvice() -> Advice {
        let randomId: Int = Int.random(in: 1...advices.count)
        let index = advices.firstIndex(where: { $0.id == randomId}) ?? 1
        return advices[index]
    }
    
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}


