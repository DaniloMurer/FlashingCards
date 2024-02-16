//
//  Cards.swift
//  FlashingCards
//
//  Created by Danilo Jakob on 16.02.2024.
//

import SwiftUI

class Cards : ObservableObject {
    @Published var cards : [Card] = []
    
    init() {
        cards.append(Card(title: "Title", description: "Desciption"))
        cards.append(Card(title: "Title2", description: "Description2"))
    }
}

struct Card : Identifiable {
    let id = UUID()
    let title : String
    let description : String
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
