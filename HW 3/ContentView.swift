//
//  ContentView.swift
//  HW 3
//
//  Created by Cruz Gonzalez Garcia on 10/17/21.
//

import SwiftUI

//var test =  SetGame()

struct ContentView: View {
    
    //viewModel Variable here
    
    var body: some View {
        VStack{
            ScrollView{
                Text("Set!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
             
                
                
                    
                Button(action: {}, label: {
                    Text("New Game")
                })
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
