//
//  LifeCounter.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/6/23.
//

import SwiftUI

struct LifeCounterPlayer1: View {
    
    @Binding var lifeTotalPlayer1: Int
    @Binding var selectedColorPlayer1: Color
    
    
    var body: some View {
        VStack {
            
            Button("+") {
                lifeTotalPlayer1 += 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Text("\(lifeTotalPlayer1)")
            
            Button("-") {
                lifeTotalPlayer1 -= 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .foregroundColor(selectedColorPlayer1 == .black ? .white : .primary)
        .background(
            Image("Red")
                .resizable()
        )
    }
}

struct LifeCounterPlayer1_Previews: PreviewProvider {
    @State static var lifeTotalPlayer1 = 20
    @State static var selectedColorPlayer1: Color = .red
    static var previews: some View {
        LifeCounterPlayer1(lifeTotalPlayer1: $lifeTotalPlayer1, selectedColorPlayer1: $selectedColorPlayer1)
    }
}
