//
//  ContentView.swift
//  memorize
//
//  Created by tiago pinheiro on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack{
            ForEach(viewModel.cards.shuffled()){ card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}


struct CardView: View{
    var card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
                
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
            
        }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
