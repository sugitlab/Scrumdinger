//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Shinji Sugimoto on 2021/06/06.
//

import SwiftUI

struct ScrumView: View {
    @Binding var scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: binding(for: scrum))){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.color)
            }
        }
        .navigationTitle("Daily Scrums")
        .navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "plus")
        })
    }
    
    private func binding(for scrum: DailyScrum) -> Binding<DailyScrum> {
        guard let scrumIndex = scrums.firstIndex(where: { $0.id == scrum.id }) else {
            fatalError("Can't find scrum in array")
        }
        return $scrums[scrumIndex]
    }
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: .constant(DailyScrum.data))
        }
    }
}
