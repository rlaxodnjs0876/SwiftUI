//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 김태원 on 2022/05/31.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
