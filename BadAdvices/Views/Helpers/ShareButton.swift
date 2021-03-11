//
//  ShareButton.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 10/03/2021.
//

import SwiftUI


struct ShareButton: View {
    var contentToShare: Any
    
    var body: some View {
        Button(action: actionSheet) {
            Image(systemName: "square.and.arrow.up")
        }
    }
    
    func actionSheet() {
        let data = contentToShare
        let controller = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(controller, animated: true, completion: nil)
    }
}
struct ShareButton_Previews: PreviewProvider {
    static var previews: some View {
        ShareButton(contentToShare: "Hello World")
    }
}
