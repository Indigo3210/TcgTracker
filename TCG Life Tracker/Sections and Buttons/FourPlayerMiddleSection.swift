//
//  FourPlayerMiddleSection.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/11/23.
//

import SwiftUI

struct FourPlayerMiddleSection: View {
    @Binding var lifeTotalPlayer1: Int
    @Binding var lifeTotalPlayer2: Int
    @Binding var lifeTotalPlayer3: Int
    @Binding var lifeTotalPlayer4: Int
    
    @Binding var playerOnePalette: Bool
    @Binding var playerTwoPalette: Bool
    @Binding var playerThreePalette: Bool
    @Binding var playerFourPalette: Bool
    
    
    @Binding var selectedColorPlayer1: Color
    @Binding var selectedColorPlayer2: Color
    @Binding var selectedColorPlayer3: Color
    @Binding var selectedColorPlayer4: Color
    
    @Binding var numberOfPlayersSelector: Bool
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "4"
    
    var body: some View {
        HStack {
            
            Button {
                withAnimation {
                    playerTwoPalette.toggle()
                }
            }label: {
                Image(systemName: "paintpalette.fill")
                    .foregroundColor(selectedColorPlayer2)
                    .rotationEffect(Angle(degrees: 180))
            }
            
            Button {
                withAnimation {
                    playerThreePalette.toggle()
                }
            }label: {
                Image(systemName: "paintpalette.fill")
                    .foregroundColor(selectedColorPlayer3)
            }
            
            Button {
                withAnimation {
                    numberOfPlayersSelector.toggle()
                }
            }label: {
                Image(systemName: "person.2.fill")
                    .foregroundColor(.black)
            }
            
            if numberOfPlayersSelector {
                ActivePlayersSelector2(selectedNumberOfPlayer: $selectedNumberOfPlayers)
                    .transition(.scale)
            }
            
            Button {
                withAnimation {
                    lifeTotalPlayer1 = 40
                    lifeTotalPlayer2 = 40
                    lifeTotalPlayer3 = 40
                    lifeTotalPlayer4 = 40
                }
            }label: {
                Image(systemName: "gobackward")
                    .foregroundColor(.black)
            }
            
            Button {
                withAnimation {
                    playerFourPalette.toggle()
                }
            }label: {
                Image(systemName: "paintpalette.fill")
                    .foregroundColor(selectedColorPlayer4)
            }
            
            Button {
                withAnimation {
                    playerOnePalette.toggle()
                }
            }label: {
                Image(systemName: "paintpalette.fill")
                    .foregroundColor(selectedColorPlayer1)
                    .rotationEffect(Angle(degrees: 180))
            }
        }
        
    }
}

struct FourPlayerMiddleSection_Previews: PreviewProvider {
    @State static var lifeTotalPlayer1 = 40
    @State static var lifeTotalPlayer2 = 40
    @State static var lifeTotalPlayer3 = 40
    @State static var lifeTotalPlayer4 = 40
    @State static var playerOnePalette = false
    @State static var playerTwoPalette = false
    @State static var playerThreePalette = false
    @State static var playerFourPalette = false
    @State static var selectedColorPlayer1: Color = .blue
    @State static var selectedColorPlayer2: Color = .red
    @State static var selectedColorPlayer3: Color = .green
    @State static var selectedColorPlayer4: Color = .black
    @State static var numberOfPlayersSelector = false
    
    
    static var previews: some View {
        FourPlayerMiddleSection(lifeTotalPlayer1: $lifeTotalPlayer1, lifeTotalPlayer2: $lifeTotalPlayer2, lifeTotalPlayer3: $lifeTotalPlayer3, lifeTotalPlayer4: $lifeTotalPlayer4, playerOnePalette: $playerOnePalette, playerTwoPalette: $playerTwoPalette, playerThreePalette: $playerThreePalette, playerFourPalette: $playerFourPalette, selectedColorPlayer1: $selectedColorPlayer1, selectedColorPlayer2: $selectedColorPlayer2, selectedColorPlayer3: $selectedColorPlayer3, selectedColorPlayer4: $selectedColorPlayer4, numberOfPlayersSelector: $numberOfPlayersSelector)
    }
}
