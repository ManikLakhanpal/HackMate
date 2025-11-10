//
//  Submission.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Submission: Codable, Identifiable {
    var id: String = UUID().uuidString
    var hackathonId: String // Reference to Hackathon
    var teamId: String // Reference to Team
    var title: String
    var description: String
    var attachments: [String] // Array of Attachment IDs
    var submittedAt: Date
    var updatedAt: Date?
    var status: SubmissionStatus
    
    enum SubmissionStatus: String, Codable {
        case draft = "Draft"
        case submitted = "Submitted"
        case underReview = "Under Review"
        case reviewed = "Reviewed"
    }
}

