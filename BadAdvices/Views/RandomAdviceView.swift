//
//  SingleAdviceView.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 20/02/2021.
//

import SwiftUI

struct RandomAdviceView: View {
    @EnvironmentObject var modelData: ModelData
    @State var advice: Advice
    
    var adviceIndex: Int {
            modelData.advices.firstIndex(where: { $0.id == advice.id })!
        }
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Here is your advice:")
            
            Text(advice.content)
                .padding()
                .font(.title)
            
            FavoriteButton(isSet: $modelData.advices[adviceIndex].isFavorite)
            
            
            Spacer()
            
            
            Button("New Advice") {
                advice = modelData.getRandomAdvice()
            }
                .buttonStyle(FilledButton())
                .padding()
        }
    }
}

struct RandomAdviceView_Previews: PreviewProvider {
    static var previews: some View {
        RandomAdviceView(advice: ModelData().advices.randomElement()!)
            .environmentObject(ModelData())
    }
}
