//
//  AddUserNameView.swift
//  Instagram
//
//  Created by Aya on 09/06/2025.
//

import SwiftUI

struct AddUserNameView: View {
    
    @State var username: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 16){
            Text("Add your username")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username to your account. You can always change it later.")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $username)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                AddPasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .modifier(CustomButtonModifier())
            }

            Spacer()
        }
        .navigationBarBackButtonHidden()
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
    AddUserNameView()
}
