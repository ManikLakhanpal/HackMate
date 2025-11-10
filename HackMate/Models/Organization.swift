//
//  Organization.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Organization: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var description: String?
    var website: String? // Website URL
    var logo: String? // Logo URL or image name
    var email: String
    var contactInfo: String? // Additional contact information
    var socialLinks: SocialLinks?
    
    struct SocialLinks: Codable {
        var github: String? // GitHub URL
        var linkedIn: String? // LinkedIn URL
        var twitter: String? // Twitter URL
    }
}

