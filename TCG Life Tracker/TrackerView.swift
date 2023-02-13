//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
// add an expand feature ot the color picker
// add custom colors for each mana color
// assing custom icons to colorPalette
// add animation to the mid section to hide it and bring it up as needed
import Foundation
import SwiftUI

struct TrackerView: View {
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    
    @State private var playerOnePalette = false
    @State private var playerTwoPalette = false

    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(spacing:0) {
                    HStack(spacing: 100) {
                        if playerOnePalette {
                            MyColorPicker(selectedColor: $selectedColorPlayer1)
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
                    HStack(spacing: 100) {
                        if playerTwoPalette {
                            MyColorPicker(selectedColor: $selectedColorPlayer2)
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
