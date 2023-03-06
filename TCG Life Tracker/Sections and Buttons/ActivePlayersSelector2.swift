//
//  ActivePlayersSelector2.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/5/23.
//

import SwiftUI

struct ActivePlayersSelector2: View {
    @Binding var selectedNumberOfPlayer: String
    
    private let numberOfPlayers: [String] = ["2", "3", "4"]
    
    var body: some View {
        
            VStack {
                
                //Button(action: <#() -> Void#>, label: <#T##() -> View#>)
                
                //Button(action: <#T##() -> Void#>, label: <#T##() -> View#>)
                
                //Button(action: <#T##() -> Void#>, label: <#T##() -> View#>)


                
                }
                .frame(width: 50, height: 250)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(20)
                .padding(.horizontal)
            }
}

struct ActivePlayersSelector2_Previews: PreviewProvider {
    static var previews: some View {
        ActivePlayersSelector2(selectedNumberOfPlayer: .constant("2"))
    }
}
