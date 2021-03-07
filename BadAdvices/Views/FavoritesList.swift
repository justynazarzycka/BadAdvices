//
//  FavoritesList.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 04/03/2021.
//

import SwiftUI

struct FavoritesList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {

        VStack(alignment: .leading) {
            Text("Favorites")
                .font(.largeTitle).bold()
                .padding()
            
            List(modelData.advices.filter { $0.isFavorite == true }) { advice in
                AdviceRow(advice: advice)
                    
            }
            .animation(.linear(duration: 0.3))
        }
        //.onTapGesture{}.animation(nil)
    }
}

struct FavoritesList_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesList()
            .environmentObject(ModelData())
    }
}
