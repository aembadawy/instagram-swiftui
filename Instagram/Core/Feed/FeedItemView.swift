//
//  FeedItemView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct FeedItemView: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                Image(post.user?.profileImageUrl ?? "avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                Text(post.user?.username ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            
            Image(post.imageURL)
                .resizable()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            HStack(spacing: 12) {
                Button {
                    print("Like post!")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post!")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share on post!")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding([.top, .leading], 8)
            .foregroundStyle(.black)
            .fontWeight(.bold)
            
            Text("\(post.likes) Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 9)
                .padding([.top, .bottom], 2)
            
            HStack {
                Text("\(post.user?.username ?? "") ")
                    .fontWeight(.semibold) +
                Text(post.caption)
                Spacer()
            }
            .font(.footnote)
            .padding(.leading, 8)
            
            Text("\(post.timestamp)")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 9)
                .padding([.top, .bottom], 2)
                .foregroundStyle(.gray)

        }
    }
}

#Preview {
    FeedItemView(post: Post.MOCK_POSTS[0])
}
