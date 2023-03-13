//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
//** ADD AND FIX ALL BINDING BETWEEN STRUCTS**
// REFACTOR SECTIONS, BUTTONS
// add funcions to middle section buttons for player3 and player4
// add custom colors for each mana color
// add a split screen option for 3 and 4 players
// add a sub counter for posion damage
// add a sub counter for comander damage
// add a sub counter for mana
// add animation to the mid section to hide it and bring it up as needed
// command + option + / for documentation

import Foundation
import SwiftUI

struct TwoPlayerTrackerView: View {
    
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    
    @State private var playerOnePalette = false
    @State private var playerTwoPalette = false
    
    @State private var numberOfPlayersSelector = false
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "2"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack {
                    LifeCounterPlayer1(lifeTotalPlayer1: $lifeTotalPlayer1, selectedColorPlayer1: $selectedColorPlayer1)
                    
                    if playerOnePalette {
                        ColorPicker(selectedColor: $selectedColorPlayer1)
                            .padding(25)
                            .transition(.scale)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .rotationEffect(Angle(degrees: 180))
                .font(.system(size: 75))
                .background(selectedColorPlayer1)
                
                MiddleSection( lifeTotalPlayer1: $lifeTotalPlayer1, lifeTotalPlayer2: $lifeTotalPlayer2, playerOnePalette: $playerOnePalette, playerTwoPalette: $playerTwoPalette, selectedColorPlayer1: $selectedColorPlayer1, selectedColorPlayer2: $selectedColorPlayer2, numberOfPlayersSelector: $numberOfPlayersSelector )
                    .frame(maxWidth: .infinity)
                    .background(.thickMaterial)
                    .font(.system(size: 30))
                
                HStack(spacing: 50) {
                    if playerTwoPalette {
                        ColorPicker(selectedColor: $selectedColorPlayer2)
                            .padding(25)
                            .transition(.scale)
                    }
                    LifeCounterPlayer2(lifeTotalPlayer2: $lifeTotalPlayer2, selectedColorPlayer2: $selectedColorPlayer2)
                        .font(.system(size: 75))
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(selectedColorPlayer2)
                
            }
            .ignoresSafeArea()
        }
    }
}

struct TwoPlayerTrackerView_Previews: PreviewProvider {
    
    static var previews: some View {
        TwoPlayerTrackerView()
    }
}
