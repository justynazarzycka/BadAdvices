//
//  ExpandButton.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 09/03/2021.
//

import SwiftUI

struct ExpandButton: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        
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
}

struct ExpandButton_Previews: PreviewProvider {
    static var previews: some View {
        ExpandButton(showDetail: .constant(true))
    }
}
