//
//  CardView.swift
//  Scrumdinger
//
//  Created by Doğan Ensar Papuçcuoğlu on 21.12.2024.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            .foregroundColor(.primary)
        }
        .padding()
        
    }
    
}

#Preview {
    CardView(scrum: DailyScrum.scrum)
}
