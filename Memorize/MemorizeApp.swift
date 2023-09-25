//
//  memorizeApp.swift
//  memorize
//
//  Created by tiago pinheiro on 18/09/23.
//

import SwiftUI

@main
struct memorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
