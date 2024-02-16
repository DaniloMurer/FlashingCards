//
//  Item.swift
//  FlashingCards
//
//  Created by Danilo Jakob on 16.02.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
