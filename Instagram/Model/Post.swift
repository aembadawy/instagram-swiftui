//
//  Post.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import Foundation

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let timestamp: Date
    let imageURL: String
    var user: User?
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
     
            Post(
                id: UUID().uuidString,
                ownerId: User.MOCK_USERS[0].id,
                caption: "Enjoying the sunset 🌅",
                likes: 120,
                timestamp: Date().addingTimeInterval(-3600), // 1 hour ago
                imageURL: "images-5",
                user: User.MOCK_USERS[0]
            ),
            Post(
                id: UUID().uuidString,
                ownerId: User.MOCK_USERS[1].id,
                caption: "Morning coffee vibes ☕️",
                likes: 89,
                timestamp: Date().addingTimeInterval(-7200), // 2 hours ago
                imageURL: "images-3",
                user: User.MOCK_USERS[1]
            ),
            Post(
                id: UUID().uuidString,
                ownerId: User.MOCK_USERS[2].id,
                caption: "Hiking up the mountains! 🏞",
                likes: 150,
                timestamp: Date().addingTimeInterval(-10800), // 3 hours ago
                imageURL: "images-4",
                user: User.MOCK_USERS[2]
            )
        ]
    
}
