//
//  User.swift
//  Instagram
//
//  Created by Aya on 10/06/2025.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var bio: String?
    var fullname: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        User(
               id: "1",
               username: "swift_dev",
               profileImageUrl: "https://example.com/profiles/swift_dev.jpg",
               bio: "iOS Engineer | SwiftUI Enthusiast",
               fullname: "Taylor Swift",
               email: "swift_dev@example.com"
           ),
           User(
               id: "2",
               username: "uiux_guru",
               profileImageUrl: "https://example.com/profiles/uiux_guru.jpg",
               bio: "Designing delightful mobile experiences",
               fullname: "Jamie Rivera",
               email: "jamie@example.com"
           ),
           User(
               id: "3",
               username: "code_master",
               profileImageUrl: "https://example.com/profiles/code_master.jpg",
               bio: "Full-stack developer. Coffee-powered.",
               fullname: "Alex Morgan",
               email: "alexmorgan@example.com"
           ),
           User(
               id: "4",
               username: "buildwithswift",
               profileImageUrl: "https://example.com/profiles/buildwithswift.jpg",
               bio: "Building apps with Swift & SwiftUI",
               fullname: "Jordan Blake",
               email: "jordanb@example.com"
           ),
           User(
               id: "5",
               username: "productivity_ninja",
               profileImageUrl: nil, // Optional profile image
               bio: "Minimalist. Maker. Focused.",
               fullname: "Riley Chen",
               email: "riley@example.com"
           )
    ]
}
