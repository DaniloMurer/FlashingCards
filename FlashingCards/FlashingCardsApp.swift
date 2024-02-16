//
//  FlashingCardsApp.swift
//  FlashingCards
//
//  Created by Danilo Jakob on 16.02.2024.
//

import SwiftUI
import SwiftData

@main
struct FlashingCardsApp: App {
    @StateObject var cards = Cards()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView().navigationTitle("Flashing Cards")
            }
        }.environmentObject(cards)
    }
}
