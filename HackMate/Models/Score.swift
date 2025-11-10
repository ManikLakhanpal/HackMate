//
//  Score.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Score: Codable, Identifiable {
    var id: String = UUID().uuidString
    var submissionId: String // Reference to Submission
    var judgeId: String? // Reference to User (judge/admin)
    var criteria: [ScoreCriteria]
    var totalScore: Double
    var comments: String?
    var scoredAt: Date
    
    struct ScoreCriteria: Codable {
        var name: String // e.g., "Innovation", "Design", "Functionality"
        var score: Double
        var maxScore: Double
    }
}

