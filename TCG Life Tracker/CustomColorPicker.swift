//
//  CustomColorPicker.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 2/2/23.
//

import Foundation
import SwiftUI

struct MyColorPicker: View {
    @State var isExpanded = false
    @Binding var selectedColor: Color
    private let colors:[Color] = [.red, .blue, .green, .black, .white]
    
    
    
    
    var body: some View {
        
            HStack {
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 45, height: 45)
                        .opacity(color == selectedColor ? 0.5 : 1.0)
                        .scaleEffect(color == selectedColor ? 1.1 : 1.0)
                        .onTapGesture {
                            selectedColor = color
                           // withAnimation(.easeInOut(duration: 0.5)) {
                             //   isExpanded.toggle()
                            //}
                        }
                }
            }
           // .transition(.move(edge: .top))
            //.frame(width: isExpanded ? 10 : CGFloat(colors.count) * 80 + 10, height: 50)
            .padding()
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(.horizontal)

       
      
    }
}

       


struct MyColorPicker_Previews: PreviewProvider {
    
    static var previews: some View {
        MyColorPicker(selectedColor: .constant(.blue))
    }
}
