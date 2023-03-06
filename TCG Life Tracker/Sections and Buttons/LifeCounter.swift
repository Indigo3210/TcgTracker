//
//  LifeCounter.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/6/23.
//

import SwiftUI

struct LifeCounter: View {
    
    @State private var lifeTotalPlayer1 = 20
    @State private var selectedColorPlayer1: Color = .red

    
    var body: some View {
        VStack {
            
            Button("+") {
                lifeTotalPlayer1 += 1
            }
            .frame(width: 100,height: 100)
            .background(selectedColorPlayer1)
            
            Text("\(lifeTotalPlayer1)")
            
            Button("-") {
                lifeTotalPlayer1 -= 1
            }
            .frame(width: 100,height: 100)
            .background(selectedColorPlayer1)
        }
    }
}

struct LifeCounter_Previews: PreviewProvider {
    static var previews: some View {
        LifeCounter()
    }
}
