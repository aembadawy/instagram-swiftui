//
//  LoginView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()

                Image("instagram-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 40)
                
                VStack {
                    TextField("Enter your email", text: $email)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .modifier(IGTextFieldModifier())
                }
                                
                Button {
                    
                } label: {
                    Text("Forgot your password?")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                        .padding(.trailing, 24)
                        .padding(.vertical)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                
                Button {
                    
                } label: {
                    Text("Log In")
                        .modifier(CustomButtonModifier())
                }
               
                HStack {
                    Rectangle()
                        .frame(width: 165,height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.bold)
                    Rectangle()
                        .frame(width: 165,height: 0.5)
                }
                .foregroundStyle(.gray)
                .padding([.horizontal, .top])
                
                HStack {
                    Image("fb")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with facebook")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                    
                }
                .padding(.vertical, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 10){
                        Text("Don't have an account yet?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
