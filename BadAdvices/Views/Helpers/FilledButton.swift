//
//  FilledButton.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 20/02/2021.
//

import SwiftUI

struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
    }
}
