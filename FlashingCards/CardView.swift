//
//  CardView.swift
//  FlashingCards
//
//  Created by Danilo Jakob on 16.02.2024.
//

import SwiftUI

struct CardView: View {
    var card : Card
    var body: some View {
        VStack (alignment: .leading) {
            Text(card.title).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(card.description).font(.caption)
            Text(String(card.id.uuidString)).font(.caption2)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(20)
    }
}

#Preview {
    CardView(card: Card(title: "Test", description: "Description"))
}
