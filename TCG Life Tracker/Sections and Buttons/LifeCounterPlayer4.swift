//
//  LifeCounterPlayer4.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/7/23.
//

import SwiftUI

struct LifeCounterPlayer4: View {
    @Binding var lifeTotalPlayer4: Int
    @Binding var selectedColorPlayer4: Color
    
    var body: some View {
        
        VStack {
            Button("+") {
                lifeTotalPlayer4 += 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(selectedColorPlayer4)
            
            Text("\(lifeTotalPlayer4)")
            
            Button("-") {
                lifeTotalPlayer4 -= 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(selectedColorPlayer4)
        }
        .foregroundColor(selectedColorPlayer4 == .black ? .white : .primary)
    }
}

struct LifeCounterPlayer4_Previews: PreviewProvider {
    @State static var lifeTotalPlayer4 = 40
    @State static var selectedColorPlayer4: Color = .white
    static var previews: some View {
        LifeCounterPlayer4(lifeTotalPlayer4: $lifeTotalPlayer4, selectedColorPlayer4: $selectedColorPlayer4)
    }
}
