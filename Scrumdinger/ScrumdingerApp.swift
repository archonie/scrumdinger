//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Doğan Ensar Papuçcuoğlu on 21.12.2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
