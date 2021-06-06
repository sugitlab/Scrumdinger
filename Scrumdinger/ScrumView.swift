//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Shinji Sugimoto on 2021/06/06.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
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
}

struct ScrumView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: DailyScrum.data)
        }
    }
}
