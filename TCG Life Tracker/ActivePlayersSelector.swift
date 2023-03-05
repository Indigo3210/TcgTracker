//
//  ActivePlayers.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/1/23.
//

import SwiftUI

struct ActivePlayersSelector: View {
    @Binding var selectedNumberOfPlayer: String
    
    private let numberOfPlayers: [String] = ["2", "3", "4"]
    
    var body: some View {
        
            VStack {
                
                ForEach(numberOfPlayers, id: \.self) { players in
                    Text(players)
                      .padding()
                      .background(
                        Circle()
                          .stroke(lineWidth: 4)
                          .padding(6)
                      )
                        .foregroundColor(.black)
                        .shadow(radius: 2)
                        .frame(width: 55, height: 55)
                        .opacity(players == selectedNumberOfPlayer ? 0.5 : 1.0)
                        .scaleEffect(players == selectedNumberOfPlayer ? 1.3 : 1.0)
                        .onTapGesture {
                            selectedNumberOfPlayer = players
                            }
                        
                        }
                }
                .frame(width: 50, height: 250)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(20)
                .padding(.horizontal)
            }
}

struct ActivePlayersSelector_Previews: PreviewProvider {
    static var previews: some View {
        ActivePlayersSelector(selectedNumberOfPlayer: .constant("2"))
    }
}
