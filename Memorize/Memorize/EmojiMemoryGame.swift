//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 张力明 on 2020/5/28.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🎃", "🕷"];
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex -> String in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
