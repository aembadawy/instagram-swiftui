//
//  AddEmailView.swift
//  Instagram
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 16){
            Text("Add your email")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                AddUserNameView()
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
    AddEmailView()
}
