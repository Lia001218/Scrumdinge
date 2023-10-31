//
//  ScrumdingeApp.swift
//  Scrumdinge
//
//  Created by Lia Zerquera on 10/29/23.
//

import SwiftUI

@main
struct ScrumdingeApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
