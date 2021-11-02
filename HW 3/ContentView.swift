//
//  ContentView.swift
//  HW 3
//
//  Created by Cruz Gonzalez Garcia on 10/17/21.
//

import SwiftUI

 

struct ContentView: View {
    
    //viewModel Variable here
    @ObservedObject var game : Game = Game()
    
    
    //Aspect VGrid?
    var body: some View {
        VStack {
            ScrollView {
                Text("Set!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                
                
                //Print out cards
                LazyVGrid(columns:[GridItem(.adaptive(minimum: 75))]){
                    ForEach(game.cards) { card in
                        CardView(card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                game.selectCard(card)
                            }
                            .foregroundColor(card.getCardOutline())
                
                    }
                }
                .padding(.horizontal)
                
                //Crashes preivew
                Button(action: {}, label: {
                    Text("Deal 3 More Cards")
                })
                
                Button(action: {game.newGame()}, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.blue)
                    Text("New Game")
                })
                

            }
        }
        
        
    }
}

struct CardView: View {
    var card: SetCard
    
    init(_ card: SetCard) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            shape.fill().foregroundColor(.white)
            shape.strokeBorder(lineWidth: 3.0)
            
            Text(card.getCardContents())
                .foregroundColor(card.getCardColor())
                //Card Opacity Here.
                .opacity(card.getCardOpacity())
            
                
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
