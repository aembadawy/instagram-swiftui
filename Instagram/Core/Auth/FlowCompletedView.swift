//
//  FlowCompletedView.swift
//  Instagram
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct FlowCompletedView: View {
    @Environment(\.dismiss) var dismiss
    var username = ""
    var body: some View {
        VStack(spacing: 16) {
            Text("Welcome to Instagram \(username)")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using Instagram.")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
            
            Button {
                
            } label: {
                Text("Complete Sign Up")
                    .modifier(CustomButtonModifier())
                    .padding(.top)
            }

        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    FlowCompletedView()
}
