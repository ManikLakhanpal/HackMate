//
//  Hackathon.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Hackathon: Codable, Identifiable {
    var id: String = UUID().uuidString
    var bannerImage: String? // URL or image name
    var name: String
    var tagline: String
    var description: String
    var dates: HackathonDates
    var type: HackathonType
    var eligibility: String
    var rules: String
    var teamSize: Int
    var prizes: String? // Optional prizes
    
    struct HackathonDates: Codable {
        var start: Date
        var end: Date
    }
    
    enum HackathonType: String, Codable {
        case online = "Online"
        case offline = "Offline"
    }
}

