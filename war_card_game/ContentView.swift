//
//  ContentView.swift
//  war_card_game
//
//  Created by Diego Sanmartin on 16/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .ignoresSafeArea()
        
            VStack{
                Spacer()

                Image("logo").padding(.top)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                    // Generate random num
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    else {
                        cpuScore += 1
                        playerScore += 1
                    }
                    
                    
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom,10)
                        Text(String(playerScore)).font(.largeTitle)
                }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom,10)
                        Text(String(cpuScore)).font(.largeTitle)}
                    
                    Spacer()
                }.foregroundColor(Color.white)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
