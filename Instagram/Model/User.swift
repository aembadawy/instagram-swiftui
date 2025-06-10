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
