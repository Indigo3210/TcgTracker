//
//  CustomColorPicker.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 2/2/23.
//

import Foundation
import SwiftUI

struct ColorPicker: View {
    
    @Binding var selectedColor: Color
    private let colors:[Color] = [.red, .blue, .green, .black, .white]
    
    var body: some View {
        
            VStack {
                
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .shadow(radius: 2)
                        .frame(width: 45, height: 45)
                        .opacity(color == selectedColor ? 0.5 : 1.0)
                        .scaleEffect(color == selectedColor ? 1.1 : 1.0)
                        .onTapGesture {
                            selectedColor = color
                            }
                        }
                }
                .padding()
                .background(.thinMaterial)
                .cornerRadius(20)
            }

    }

struct ColorPicker_Previews: PreviewProvider {
    
    static var previews: some View {
        ColorPicker(selectedColor: .constant(.blue))
    }
}
