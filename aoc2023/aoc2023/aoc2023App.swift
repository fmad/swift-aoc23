//
//  aoc2023App.swift
//  aoc2023
//
//  Created by Mad on 30/12/2023.
//

import SwiftUI

@main
struct aoc2023App: App {
    private var store = PuzzleStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
