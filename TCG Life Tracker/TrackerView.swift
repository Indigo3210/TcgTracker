//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
// add custom colors for each mana color
// add a 40 life option for comander games
// add a split screen option for 3 and 4 players
// add a sub counter for posion damage
// add a sub counter for comander damage
// add a sub counter for mana
// add animation to the mid section to hide it and bring it up as needed
import Foundation
import SwiftUI

struct TrackerView: View {
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    
    // command + option + / for documentation
    
    /// this something
    @State private var playerOnePalette = false
    @State private var playerTwoPalette = false
    
    @State private var numberOfPlayersSelector = false
    @State private var numberOfPlayers = false
    @State private var selectedNumberOfPlayers = "2"
    
    // remove extra lines
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(spacing:0) {
                    
                    HStack(spacing: 100) {
                        if playerOnePalette {
                            ColorPicker(selectedColor: $selectedColorPlayer1)
                                .transition(.scale)
                        }
                        
                        
                        VStack {
                            
                            Button("+") {
                                lifeTotalPlayer1 += 1
                            }
                            
                            Text("\(lifeTotalPlayer1)")
                            
                            Button("-") {
                                lifeTotalPlayer1 -= 1
                                
                            }
                            .frame(width: 100,height: 100)
                            .background(selectedColorPlayer1)
                        }
                        
                    }
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(selectedColorPlayer1 == .black ? .white : .primary)
                .rotationEffect(Angle(degrees: 180))
                .font(.system(size: 75))
                .background(selectedColorPlayer1)
                
                
                
               MiddleSection()
                
                
                VStack(spacing: 0) {
                    HStack(spacing: 100) {
                        if playerTwoPalette {
                            ColorPicker(selectedColor: $selectedColorPlayer2)
                                .transition(.scale)
                        }
                        
                        VStack {
                            Button("+") {
                                lifeTotalPlayer2 += 1
                            }
                            
                            Spacer()
                            Text("\(lifeTotalPlayer2)")
                            Spacer()
                            
                            
                            Button("-") {
                                lifeTotalPlayer2 -= 1
                                
                            }
                            .frame(width: 100,height: 100)
                            .background(selectedColorPlayer2)
                        }
                        
                    }
                    .padding(.trailing, 0.0)
                    
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(selectedColorPlayer2 == .black ? .white : .primary)
                .background(selectedColorPlayer2)
                .font(.system(size: 75))
                
            }
        }
    }
}

struct trackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}
