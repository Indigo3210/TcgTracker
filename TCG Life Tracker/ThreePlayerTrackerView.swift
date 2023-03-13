//
//  ThreePlayerTrackerView.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/2/23.
//

import SwiftUI

struct ThreePlayerTrackerView: View {
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    @State private var selectedColorPlayer3: Color = .green
    @State private var lifeTotalPlayer1 = 40
    @State private var lifeTotalPlayer2 = 40
    @State private var lifeTotalPlayer3 = 40
    
    @State private var playerOnePalette = false
    @State private var playerTwoPalette = false
    @State private var playerThreePalette = false
    
    @State private var numberOfPlayersSelector = false
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "2"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    HStack(spacing:0) {
                        if playerOnePalette {
                            ColorPicker(selectedColor: $selectedColorPlayer1)
                                .transition(.scale)
                        }
                        
                        LifeCounterPlayer1(lifeTotalPlayer1: $lifeTotalPlayer1, selectedColorPlayer1: $selectedColorPlayer1)
                        
                    }
                    HStack {
                        
                        LifeCounterPlayer2(lifeTotalPlayer2: $lifeTotalPlayer2, selectedColorPlayer2: $selectedColorPlayer2)
                            .frame(maxWidth: .infinity)
                            .background(selectedColorPlayer2)
                        
                        if playerTwoPalette {
                            ColorPicker(selectedColor: $selectedColorPlayer2)
                                .transition(.scale)
                        }
                    }
                }
                .background(.ultraThinMaterial)
                .rotationEffect(Angle(degrees: 180))
                .font(.system(size: 75))
                
                ThreePlayerMiddleSection(lifeTotalPlayer1: $lifeTotalPlayer1, lifeTotalPlayer2: $lifeTotalPlayer2, lifeTotalPlayer3: $lifeTotalPlayer3, playerOnePalette: $playerOnePalette, playerTwoPalette: $playerTwoPalette, playerThreePalette: $playerThreePalette, selectedColorPlayer1: $selectedColorPlayer1, selectedColorPlayer2: $selectedColorPlayer2, selectedColorPlayer3: $selectedColorPlayer3, numberOfPlayersSelector: $numberOfPlayersSelector)
                    .frame(maxWidth: .infinity)
                    .background(.thickMaterial)
                    .font(.system(size: 35))
                
                HStack(spacing: 15) {
                    
                    if playerThreePalette {
                        ColorPicker(selectedColor: $selectedColorPlayer3)
                            .transition(.scale)
                    }
                    
                    LifeCounterPlayer3(lifeTotalPlayer3: $lifeTotalPlayer3, selectedColorPlayer3: $selectedColorPlayer3)
                        .font(.system(size: 75))
                        .foregroundColor(selectedColorPlayer3 == .black ? .white : .primary)
                        .background(selectedColorPlayer3)
                    
                    
                }
            }
            .ignoresSafeArea()
        }
        
    }
}


struct ThreePlayerTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        ThreePlayerTrackerView()
    }
}
