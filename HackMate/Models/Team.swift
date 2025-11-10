//
//  Team.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Team: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var hackathonId: String // Reference to Hackathon
    var leaderId: String // Reference to User (team leader)
    var memberIds: [String] // Array of User IDs (team members)
    var createdAt: Date
    var updatedAt: Date?
}

