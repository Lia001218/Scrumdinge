//
//  ScrumdingeApp.swift
//  Scrumdinge
//
//  Created by Lia Zerquera on 10/29/23.
//

import SwiftUI

@main
struct ScrumdingeApp: App {
    @StateObject private var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums){
                Task {
                    do {
                            try await store.save(scrums: store.scrums)
                        } catch {
                                            fatalError(error.localizedDescription)
                        }
                }
            }
                .task {
                    do {
                            try await store.load()
                    } catch {
                            fatalError(error.localizedDescription)
                    }
                }
            
        }
    }
}
