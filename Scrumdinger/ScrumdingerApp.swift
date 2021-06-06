//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Shinji Sugimoto on 2021/06/06.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: DailyScrum.data)
        }
    }
}
