//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by tiago pinheiro on 19/09/23.
//

import SwiftUI

class EmojiMemoryGame{
    private var model:MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻","🕷️","😀"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count){ pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    //MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    //MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
    
    
}
