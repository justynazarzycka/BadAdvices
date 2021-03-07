//
//  Placeholder.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 05/03/2021.
//

import SwiftUI

struct AdviceDetail: View {
    @EnvironmentObject var modelData: ModelData
    @State var advice: Advice
    
    var adviceIndex: Int {
            modelData.advices.firstIndex(where: { $0.id == advice.id })!
        }
    
    var body: some View {
        VStack {
            Text(advice.content)
                .padding()
                .font(.title)
            
            FavoriteButton(isSet: $modelData.advices[adviceIndex].isFavorite)
        }
    }
}

struct AdviceDetail_Previews: PreviewProvider {
    static var previews: some View {
        AdviceDetail(advice: ModelData().advices.randomElement()!)
            .environmentObject(ModelData())
    }
}
