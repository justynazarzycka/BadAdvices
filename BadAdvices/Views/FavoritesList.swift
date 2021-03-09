//
//  FavoritesList.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 04/03/2021.
//

import SwiftUI

struct FavoritesList: View {
    @EnvironmentObject var modelData: ModelData
    //goeno psuje
    @State private var editMode = EditMode.inactive
    
    var filteredAdvices: [Advice] {
        modelData.advices.filter { $0.isFavorite == true
        }
    }
    

    var body: some View {

        VStack(alignment: .leading) {

            NavigationView {
                List {
                    
                    ForEach(filteredAdvices) { advice in
                        AdviceRow(advice: advice, editMode: editMode)
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            // find index of choosen advice in modelData and change its isFavorite value to false
                            if let adviceIndex = modelData.advices.firstIndex(of: filteredAdvices[index]) {
                                modelData.advices[adviceIndex].isFavorite = false
                            }
                        }
                    })
                }
                .animation(.linear(duration: 0.4))
                .navigationTitle("Favorites")
                //.navigationBarItems(leading: EditButton())
                .toolbar {
                    EditButton()
                }
                .environment(\.editMode, $editMode)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct FavoritesList_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesList()
            .environmentObject(ModelData())
    }
}
