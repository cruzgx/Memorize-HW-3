//
//  File.swift
//  HW 3
//
//  Created by Cruz Gonzalez Garcia on 10/17/21.
//

import Foundation

//This is the Model or the Logic of the game

//Make this an obersevalbe object?
struct SetGame {
    
    var setDeck = SetCardDeck()
    var cards = [SetCard]() //the cards in play
    var score = 0;
    
    //var selectedCards = [SetCard]() //cards the user touches
    
    
    //Note: A game should start with 12 cards
    init () {
        for _ in 1...12 {
            if let card = setDeck.dealCard() { //if drawing a card doesn't give us nil
                cards.append(card)
            } else {
                print("Error, no cards left in the deck")
            }
        }
        
        for card in cards {
            print(card.shape, card.getCardContents(), "Num of Shapes: \(card.count)", card.shade)
        }
    }
    
    
    
    
    mutating func selectCard(pos: Int) {
//        //var chosenCard =
//        if(pos < 0 || pos >= SetDeck.count) {return}
//
//        let card: SetCard = SetDeck.getCard(pos)!
//
//        //update the collectionOfSelectedCards we have selected
//        selectedCards += card
//        card.isSelected.toggle()
//        //
    }
    
    mutating func addThreeCards() {
        //create 3 new cards and add to our set deck
        //MARK: Implement me!
        for _ in 1...3 {
            if let card = setDeck.dealCard() { //if calling the function does not return nil
                cards.append(card)
            } else {
                print("Deck is empty. Can't add more cards")
            }
        }
    }
    
}
