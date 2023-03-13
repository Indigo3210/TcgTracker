//
//  ActivePlayersSelector2.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/5/23.
//

import SwiftUI

struct PlayerSelectorButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(
                Circle()
                    .stroke(lineWidth: 4)
                    .padding(1)
            )
            .foregroundColor(.black)
            .shadow(radius: 2)
         .frame(width: 55, height: 55)
        
        
    }
}

struct ActivePlayersSelector2: View {
    @Binding var selectedNumberOfPlayer: String
    private let numberOfPlayers: [String] = ["2", "3", "4"]
    
    var body: some View {
        VStack {
            
            NavigationLink ("2", destination: TwoPlayerTrackerView())
            
            NavigationLink ("3", destination: ThreePlayerTrackerView())
            
            NavigationLink ("4", destination: FourPlayerTrackerView())
            
        }
        .buttonStyle(PlayerSelectorButton())
        .padding()
        .background(.thinMaterial)
        .cornerRadius(20)
        .padding(.horizontal)
    }
}

struct ActivePlayersSelector2_Previews: PreviewProvider {
    @State static var selectedNumberOfPlayers = "two"
    static var previews: some View {
        ActivePlayersSelector2( selectedNumberOfPlayer: $selectedNumberOfPlayers)
    }
}
