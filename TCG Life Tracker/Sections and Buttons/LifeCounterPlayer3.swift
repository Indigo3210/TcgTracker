//
//  LifeCounterPlayer3.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/7/23.
//

import SwiftUI

struct LifeCounterPlayer3: View {
    
    @Binding var lifeTotalPlayer3: Int
    @Binding var selectedColorPlayer3: Color
    
    var body: some View {
        
        VStack {
            
            Button("+") {
                lifeTotalPlayer3 += 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(selectedColorPlayer3)
            
            
            Text("\(lifeTotalPlayer3)")
            
            Button("-") {
                lifeTotalPlayer3 -= 1
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(selectedColorPlayer3)
        }
        .foregroundColor(selectedColorPlayer3 == .black ? .white : .primary)

    }
}
    
    struct LifeCounterPlayer3_Previews: PreviewProvider {
        @State static var lifeTotalPlayer3 = 40
        @State static var selectedColorPlayer3: Color = .green
        static var previews: some View {
            LifeCounterPlayer3(lifeTotalPlayer3: $lifeTotalPlayer3, selectedColorPlayer3: $selectedColorPlayer3)
        }
    }
