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
        VStack(spacing: 0) {
            VStack(spacing:0) {
                HStack(spacing:0) {
                    VStack(spacing: 0) {
                        Button("+") {
                            lifeTotalPlayer1 += 1
                        }
                        
                        Text("\(lifeTotalPlayer1)")
                        
                        Button("-") {
                            lifeTotalPlayer1 -= 1
                            
                        }
                    }
                    .frame(width: 200, height: 420)
                    .background(selectedColorPlayer1)
                    
                    if playerOnePalette {
                        ColorPicker(selectedColor: $selectedColorPlayer1)
                            .transition(.scale)
                    }
                    
                    if playerThreePalette {
                        ColorPicker(selectedColor: $selectedColorPlayer3)
                            .transition(.scale)
                    }
                    
                    VStack(spacing: 0) {
                        Button("+") {
                            lifeTotalPlayer3 += 1
                        }
                        
                        Text("\(lifeTotalPlayer3)")
                        
                        Button("-") {
                            lifeTotalPlayer3 -= 1
                            
                        }
                    }
                    .frame(width: 200, height: 420)
                    .background(selectedColorPlayer3)
                    
                }
                
            }
            .background(.white)
            .frame(width: 400, height: .infinity)
            .foregroundColor(selectedColorPlayer1 == .black ? .white : .primary)
            .foregroundColor(selectedColorPlayer3 == .black ? .white : .primary)
            .rotationEffect(Angle(degrees: 180))
            .font(.system(size: 75))
            
            
            
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
                        playerThreePalette.toggle()
                    }
                }label: {
                    Image(systemName: "paintpalette.fill")
                        .foregroundColor(selectedColorPlayer3)
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
            
            
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
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
                                
                
                
            }
            .frame( width: 400, height: .infinity)
            .foregroundColor(selectedColorPlayer2 == .black ? .white : .primary)
            .background(selectedColorPlayer2)
            .font(.system(size: 75))
            
        }
        .frame(width: 400, height: .infinity)
        .ignoresSafeArea()

    }
        
}


struct ThreePlayerTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        ThreePlayerTrackerView()
    }
}
