//
//  Notification.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Notification: Codable, Identifiable {
    var id: String = UUID().uuidString
    var userId: String // Reference to User (recipient)
    var title: String
    var message: String
    var type: NotificationType
    var isRead: Bool
    var createdAt: Date
    var relatedId: String? // Optional reference to related entity (e.g., hackathonId, teamId)
    
    enum NotificationType: String, Codable {
        case hackathon = "Hackathon"
        case team = "Team"
        case submission = "Submission"
        case score = "Score"
        case system = "System"
    }
}

