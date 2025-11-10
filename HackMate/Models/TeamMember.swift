//
//  TeamMember.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//
//  Note: This represents the relationship between a User and a Team

import Foundation

struct TeamMember: Codable, Identifiable {
    var id: String = UUID().uuidString
    var teamId: String // Reference to Team
    var userId: String // Reference to User
    var role: TeamRole
    var joinedAt: Date
    
    enum TeamRole: String, Codable {
        case leader = "Leader"
        case member = "Member"
    }
}

