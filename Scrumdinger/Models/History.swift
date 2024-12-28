//
//  History.swift
//  Scrumdinger
//
//  Created by Doğan Ensar Papuçcuoğlu on 25.12.2024.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    let attendees: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
