//
//  ContentView.swift
//  FlashingCards
//
//  Created by Danilo Jakob on 16.02.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @EnvironmentObject var data : Cards
    var body: some View {
        List {
            ForEach(data.cards) {
                card in
                NavigationLink(card.title) {
                    CardView(card: card).navigationTitle("Details")
                }
            }.onDelete(perform: { indexSet in
                data.cards.remove(atOffsets: indexSet)
            })
        }.toolbar {
            ToolbarItem {
                NavigationLink("Beep") {
                    CardView(card: Card(title: "test", description: "dtes")).navigationTitle("Title")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ContentView().environmentObject(Cards()).navigationTitle("Flashing Cards")
    }
}
