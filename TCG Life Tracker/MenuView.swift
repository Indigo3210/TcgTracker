//
//  ContentView.swift
//  practice
//
//  Created by Jonathan Vale on 1/9/23.
//

import SwiftUI

struct MenuView: View {
    var options = ["TCG Selector", "Settings"]
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("  Life Tracker") // remove spaces
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 24)
                    .font(.system(size: 50))
                    .background(.purple)
                    .cornerRadius(50)
                    .padding(.horizontal, 8)
                    .foregroundColor(.yellow)
                    .padding(.top, 80)
                Spacer()
                NavigationLink(destination: TrackerView()) {
                label: do {
                    Text("Start")
                        .frame(maxWidth: 250, maxHeight: 60)
                        .font(.system(size: 35))
                        .foregroundColor(.yellow)
                        .background(.purple)
                        .cornerRadius(40)
                        .font(.title)
                }
                }
                .foregroundColor(.black)
                ForEach(0..<2) {number in
                    Button(options[number]) {
                    }
                    .frame(maxWidth: 250, maxHeight: 60)
                    .font(.system(size: 35))
                    .foregroundColor(.yellow)
                    .background(.purple)
                    .cornerRadius(40)
                    
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.teal)
        }
        
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
