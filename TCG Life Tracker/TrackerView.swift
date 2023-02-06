//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
// add an expand feature ot the color picker
// add custom colors for each mana color
//assing custom icons to colorPalette
// add animation to the mid section to hide it and bring it up as needed
import Foundation
import SwiftUI

struct TrackerView: View {
    
    @State private var selectedColorPlayer1: Color = .red
    @State private var selectedColorPlayer2: Color = .blue
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    @State var isExpandeble = false
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(spacing:0) {
                    Button("+") {
                        lifeTotalPlayer1 += 1
                    }
                    
                    Text("\(lifeTotalPlayer1)")
                    
                    Button("-") {
                        lifeTotalPlayer1 -= 1
                        
                    }
                    
                    HStack {
                        MyColorPicker(selectedColor: $selectedColorPlayer1)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundColor(selectedColorPlayer1 == .black ? .white : .primary)
                .rotationEffect(Angle(degrees: 180))
                .font(.system(size: 75))
                .background(selectedColorPlayer1)

                
                HStack {
                    
                    Button {
                        lifeTotalPlayer1 = 20
                        lifeTotalPlayer2 = 20
                    }label: {
                        Image(systemName: "gobackward")
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .background(.thickMaterial)
                .font(.system(size: 30))
                
                
                
                VStack(spacing: 0) {
                    
                    Button("+") {
                        lifeTotalPlayer2 += 1
                    }
                    
                    Spacer()
                    Text("\(lifeTotalPlayer2)")
                    Spacer()
                    
                    
                    Button("-") {
                        lifeTotalPlayer2 -= 1
                    }
                    
                    HStack {
                        MyColorPicker(selectedColor: $selectedColorPlayer2)
                    }
                    
                    
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
