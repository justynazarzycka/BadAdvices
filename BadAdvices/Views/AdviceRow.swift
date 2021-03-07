//
//  AdviceRow.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 04/03/2021.
//

import SwiftUI

struct AdviceRow: View {
    var advice: Advice
    @State private var showDetail = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if (!showDetail) {
                    Text(advice.content)
                        .frame(height: 25)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        self.showDetail.toggle()
                    }
                }, label: {
                    Image(systemName: "chevron.right.circle")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                        .padding()
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1.0)
                })
            }
            .frame(width: 350, height: 50)
            .truncationMode(.tail)
        

            if (showDetail) {
                Text(advice.content)
                    .padding(50)
            }
        }
    }
}

struct AdviceRow_Previews: PreviewProvider {
    static var previews: some View {
        AdviceRow(advice: ModelData().advices[5])
    }
}
