//
//  LifeCounterPlayer2.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/7/23.
//

import SwiftUI

struct LifeCounterPlayer2: View {
    @Binding var lifeTotalPlayer2: Int
    @Binding var selectedColorPlayer2: Color

    
    var body: some View {
        VStack {
            
            Button("+") {
                lifeTotalPlayer2 += 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Text("\(lifeTotalPlayer2)")
            
            Button("-") {
                lifeTotalPlayer2 -= 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .foregroundColor(selectedColorPlayer2 == .black ? .white : .primary)
        .background(selectedColorPlayer2)


    }
}


struct LifeCounterPlayer2_Previews: PreviewProvider {
    @State static var lifeTotalPlayer2 = 20
    @State static var selectedColorPlayer2: Color = .blue
    static var previews: some View {
        LifeCounterPlayer2(lifeTotalPlayer2: $lifeTotalPlayer2, selectedColorPlayer2: $selectedColorPlayer2)
    }
}
