//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Shinji Sugimoto on 2021/06/06.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5.0, total: 15.0)
            HStack {
                VStack {
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                VStack {
                    Text("Seconds Remaining")
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
