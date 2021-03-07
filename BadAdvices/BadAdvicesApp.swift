//
//  BadAdvicesApp.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 20/02/2021.
//

import SwiftUI

@main
struct BadAdvicesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
