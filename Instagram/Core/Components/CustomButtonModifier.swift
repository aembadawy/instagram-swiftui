//
//  CustomButtonModifier.swift
//  Instagram
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct CustomButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.white)
            .font(.footnote)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(8) // or .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 2)
            .padding(.horizontal, 24)
    }
}
