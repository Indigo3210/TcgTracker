//
//  MiddleSection.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/5/23.
//

import SwiftUI

struct MiddleSection: View {
    
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    
    @State private var playerOnePalette = false
    @State private var playerTwoPalette = false
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    
    @State private var numberOfPlayersSelector = false
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "2"
    
    var body: some View {
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
                ActivePlayersSelector(selectedNumberOfPlayer: $selectedNumberOfPlayers)
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
        .frame(maxWidth: .infinity)
        .background(.thickMaterial)
        .font(.system(size: 30))
    }
}

struct MiddleSection_Previews: PreviewProvider {
    static var previews: some View {
        MiddleSection()
    }
}
