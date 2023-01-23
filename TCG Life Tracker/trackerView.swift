//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
// add function to button

import Foundation
import SwiftUI

struct trackerView: View {
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    var midSectionOptions = ["Settings", "Reset", "Colors"]
    let columns = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
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
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.purple)
                .rotationEffect(Angle(degrees: 180))
                .ignoresSafeArea()
                .font(.system(size: 75))
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<3) {number in
                        Button(midSectionOptions[number]) {
                        }
                        .font(.system(size: 20))
                    }
                        
                        
                }
                .background(.yellow)
                
                VStack(spacing: 0) {
                    Spacer()
                    Button("+") {
                        lifeTotalPlayer2 += 1
                    }
                   
                    Spacer()
                 Text("\(lifeTotalPlayer2)")
                    Spacer()
                    
                    
                    Button("-") {
                        lifeTotalPlayer2 -= 1
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.cyan)
                .ignoresSafeArea()
                .font(.system(size: 75))
                
            }
        }
        .foregroundColor(.primary)
    }
}

struct trackerView_Previews: PreviewProvider {
    static var previews: some View {
        trackerView()
    }
}
