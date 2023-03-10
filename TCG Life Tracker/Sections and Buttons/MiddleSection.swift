//
//  MiddleSection.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/5/23.
//

import SwiftUI

struct MiddleSection: View {
    
    @Binding var lifeTotalPlayer1: Int
    @Binding var lifeTotalPlayer2: Int
    
    @Binding var playerOnePalette: Bool
    @Binding var playerTwoPalette: Bool
    
    @Binding var selectedColorPlayer1: Color
    @Binding var selectedColorPlayer2: Color
    
    @Binding var numberOfPlayersSelector: Bool
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "2"
    
    var body: some View {
        NavigationStack {
            HStack {
                Button {
                    withAnimation {
                        playerOnePalette.toggle()
                    }
                }label: {
                    Image(systemName: "paintpalette.fill")
                        .foregroundColor(selectedColorPlayer1)
                        .rotationEffect(Angle(degrees: 180))
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
                        lifeTotalPlayer1 = 20
                        lifeTotalPlayer2 = 20
                    }
                }label: {
                    Image(systemName: "gobackward")
                        .foregroundColor(.black)
                }
                Button {
                    withAnimation {
                        playerTwoPalette.toggle()
                    }
                }label: {
                    Image(systemName: "paintpalette.fill")
                        .foregroundColor(selectedColorPlayer2)
                }
            }
        }
    }
    
}




struct MiddleSection_Previews: PreviewProvider {
    @State static var lifeTotalPlayer1 = 20
    @State static var lifeTotalPlayer2 = 20
    @State static var selectedColorPlayer1: Color = .red
    @State static var selectedColorPlayer2: Color = .blue
    @State static var playerOnePalette = false
    @State static var playerTwoPalette = false
    @State static var numberOfPlayersSelector = false
    static var previews: some View {
        MiddleSection( lifeTotalPlayer1: $lifeTotalPlayer1, lifeTotalPlayer2: $lifeTotalPlayer2, playerOnePalette: $playerOnePalette, playerTwoPalette: $playerTwoPalette, selectedColorPlayer1: $selectedColorPlayer1, selectedColorPlayer2: $selectedColorPlayer2, numberOfPlayersSelector: $numberOfPlayersSelector)
    }
}
