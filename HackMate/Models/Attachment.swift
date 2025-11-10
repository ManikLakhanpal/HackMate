//
//  Attachment.swift
//  HackMate
//
//  Created by Manik Lakhanpal on 09/11/25.
//

import Foundation

struct Attachment: Codable, Identifiable {
    var id: String = UUID().uuidString
    var url: String // URL only
    var fileName: String?
    var fileType: String? // e.g., "pdf", "zip", "image/png"
    var uploadedAt: Date
}

