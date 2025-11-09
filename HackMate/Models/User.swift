//
//  User.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String // UID
    var firstName: String
    var lastName: String
    var username: String
    var email: String
    var bio: String?
    var skills: [String] // Array of skills
    var github: String? // GitHub URL
    var linkedIn: String? // LinkedIn URL
    var twitter: String? // Twitter URL
    var password: String // Note: In production, this should be hashed
    var type: UserType
    var orgName: String? // For users of type 'Org'
    var website: String? // Website URL
    
    enum UserType: String, Codable {
        case organization = "Organization"
        case user = "User"
        case admin = "Admin"
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

