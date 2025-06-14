//
//  PostsGrid.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import SwiftUI

struct PostsGrid: View {
    var posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)
    ]
    
    let imageDimention: CGFloat = (UIScreen.main.bounds.width / 3) - 2

    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 4) {
            ForEach(posts) { post in
                Image(post.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: imageDimention, height: imageDimention)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostsGrid(posts: Post.MOCK_POSTS)
}
