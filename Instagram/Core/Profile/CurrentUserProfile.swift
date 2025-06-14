//
//  CurrentUserProfile.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import SwiftUI

struct CurrentUserProfile: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ProfileHeaderView(user: User.MOCK_USERS[0])
                
                PostsGrid(posts: Post.MOCK_POSTS)
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    CurrentUserProfile()
}
