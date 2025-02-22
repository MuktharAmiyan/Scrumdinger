//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Mukthar Amiyan on 22/06/24.
//

import SwiftUI

struct DetailEditView: View {
    @Binding  var scrum: DailyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in:5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                
                ThemePicker(selection: $scrum.theme)
                
            } header: {
                Text("Meeting Info")
            }
            Section {
                ForEach(scrum.attendees){ attendee in
                    Text(attendee.name)
                }
                .onDelete { indexSet in
                    scrum.attendees.remove(atOffsets: indexSet)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
                
            } header: {
                Text("Attendees")
            }
        }
    }
}

#Preview {
    DetailEditView(scrum: .constant(DailyScrum.emptyScrum))
}
