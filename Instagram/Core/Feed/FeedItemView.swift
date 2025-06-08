//
//  FeedItemView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct FeedItemView: View {
    var body: some View {
        VStack {
            HStack {
                Image("images")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                Text("Jean-Michel Basquiat")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            
            Image("images-8")
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
            
            Text("3.3K Likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 9)
                .padding([.top, .bottom], 2)
            
            HStack {
                Text("Jean-Michel Basquiat ")
                    .fontWeight(.semibold) +
                Text("The more I paint the more I like everything.")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading, 8)
            
            Text("3h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 9)
                .padding([.top, .bottom], 2)
                .foregroundStyle(.gray)

        }
    }
}

#Preview {
    FeedItemView()
}
