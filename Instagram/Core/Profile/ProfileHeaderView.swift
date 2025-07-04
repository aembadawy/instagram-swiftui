//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                Image("images")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8){
                    UserStateView(name: "Posts",
                              value: "12")
                    
                    UserStateView(name: "Followers",
                              value: "9.5K")

                    UserStateView(name: "Following",
                              value: "300")
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Jean-Michel Basquiat")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("neo-expressionism artist")
                    .font(.footnote)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .frame(width: 360, height: 32)
                    .overlay {
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(.gray, lineWidth: 1)
                    }
            }

            Divider()
                .padding(.bottom, 4)
                .padding(.horizontal, 8)
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
