//
//  AddPasswordView.swift
//  Instagram
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct AddPasswordView: View {
    @State var password = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 16) {
            Text("Add your password")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Password must be 9-16 characters long and must contain capital letter and a speacial character.")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding(.horizontal, 24)
            
            SecureField("Enter your password", text: $password)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                FlowCompletedView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .modifier(CustomButtonModifier())
            }
            
            Spacer()
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
    AddPasswordView()
}
