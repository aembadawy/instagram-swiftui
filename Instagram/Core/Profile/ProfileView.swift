//
//  ProfileView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        Post.MOCK_POSTS.filter { $0.user?.username == user.username }
    }

    var body: some View {
            ScrollView {
                ProfileHeaderView(user: user)

                PostsGrid(posts: posts)
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
