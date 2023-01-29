//
//  trackerView.swift
//  practice
//
//  Created by Jonathan Vale on 1/21/23.
//
// To do:
// verify if its best to do the 3 mid section icons individual and not in a loop
// add selector function to pallete
// add color palletes for each mana type (5)
// add reset fuction to middle button
// add setting pop up menu
// add selector
// add animation to the mid section to hide it and bring it up as needed
import Foundation
import SwiftUI

struct TrackerView: View {
    
    @State private var lifeTotalPlayer1 = 20
    @State private var lifeTotalPlayer2 = 20
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    struct Icon: Hashable {
        static func == (lhs: TrackerView.Icon, rhs: TrackerView.Icon) -> Bool {
            lhs.name == rhs.name
        }
        
        let name: String
       // let action: () -> Void
    }
   
   // let gearIcon = Icon(name: "gear", action: <#T##() -> Void#>)
    let gobackwardIcon: Icon
        //    lifeTotalPla})
    //let paletteIcon = Icon(name: "palette", action: <#T##() -> Void#>)
     
    init() {
        gobackwardIcon = Icon(name: "gobackward")//, action: { handleButton() })
        midSectionIcons = [gobackwardIcon]
        
    }
    func handleButton(name: String) {
        switch name {
        case "gobackward":
            lifeTotalPlayer1 = 20
            lifeTotalPlayer2 = 20
        default:
            return
        }
       
         }
    

    let midSectionIcons: [Icon]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                VStack(spacing:0) {
                    Button("+") {
                        lifeTotalPlayer1 += 1
                    }
                    
                    Text("\(lifeTotalPlayer1)")
                    
                    Button("-") {
                        lifeTotalPlayer1 -= 1
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.mint)
                .rotationEffect(Angle(degrees: 180))
                .ignoresSafeArea()
                .font(.system(size: 75))
                
                LazyVGrid(columns: columns) {
                    ForEach(midSectionIcons, id: \.self) { icon in
                        Button(action:  {handleButton(name: icon.name )}) {
                            Image(systemName: icon.name)
                        }
                        
                    }
                }
                .background(.yellow)
                
                VStack(spacing: 0) {
                    Spacer()
                    Button("+") {
                        lifeTotalPlayer2 += 1
                    }
                    
                    Spacer()
                    Text("\(lifeTotalPlayer2)")
                    Spacer()
                    
                    
                    Button("-") {
                        lifeTotalPlayer2 -= 1
                    }
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.cyan)
                .ignoresSafeArea()
                .font(.system(size: 75))
            }
        }
        .foregroundColor(.primary)
    }
}

struct trackerView_Previews: PreviewProvider {
    static var previews: some View {
        TrackerView()
    }
}
