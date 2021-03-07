//
//  ContentView.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 20/02/2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        TabView {
            RandomAdviceView(advice: modelData.getRandomAdvice())
                .tabItem {
                    Image(systemName: "house")
                    Text("Random Advice")
                }
            FavoritesList()
                .tabItem {
                    Image(systemName: "house")
                    Text("Favorites")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
