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
    var editMode: EditMode
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if (!showDetail) {
                    Text(advice.content)
                        .frame(height: 25)
                }
                
                Spacer()
                
                if (!editMode.isEditing) {
                    ExpandButton(showDetail: $showDetail)
                }
            }
            .frame(width: 350, height: 50)
            .truncationMode(.tail)
        

            if (showDetail) {
                HStack {
                    Text(advice.content)
                        .padding(50)
                    
                    ShareButton(contentToShare: advice.content)
                        .padding()
                        .buttonStyle(PlainButtonStyle())
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

struct AdviceRow_Previews: PreviewProvider {
    static var previews: some View {
        AdviceRow(advice: ModelData().advices[5], editMode: EditMode.inactive)
    }
}
