//
//  ColorPicker2.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/11/23.
//

import SwiftUI

struct ColorPicker2: View {
    
    @Binding var selectedColor: Image
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .shadow(radius: 2)
                .frame(width: 45, height: 45)
            //.opacity(color == selectedColor ? 0.5 : 1.0)
            //.scaleEffect(color == selectedColor ? 1.1 : 1.0)
                .onTapGesture {
                    selectedColor = Image
                }
            
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(20)
    }
}


struct ColorPicker2_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker2()
    }
}
