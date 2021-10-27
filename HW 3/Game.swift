//
//  File.swift
//  HW 3
//
//  Created by Cruz Gonzalez Garcia on 10/20/21.
//

import Foundation



//This is the viewModel
class Game: ObservableObject {
    
    //initialize the game here
    @Published private var model = SetGame()
    
    
    
    var cards : Array<SetCard> {
        model.cards
    }
   
    //MARK: - Intents
    public func newGame(){
        model = SetGame()
        print("METHOD WAS CALLED")
    }
    
    public func selectCard(_ card: SetCard){
        model.selectCard(card)
    }
    
    //Published private var model: SetGame<String>
}
