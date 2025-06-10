//
//  ButtonCustomViewModifier.swift
//
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct TextCustomViewModifier: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Next") {
                print("Moves next")
            }
            .modifier(CustomButtonModifier())
                        
            Button("Previous") {
                print("Moves back")
            }
            .modifier(CustomButtonModifier())
        }
        .padding(.horizontal)
    }
}

#Preview {
    TextCustomViewModifier()
}
