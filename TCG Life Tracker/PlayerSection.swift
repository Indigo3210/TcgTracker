//
//  PlayerSection.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/2/23.
//

import SwiftUI

struct PlayerSection: View {
    
    @State var screenType: Screens = .three
    
    
    var body: some View {
        VStack {
            screenType.body
        }
    }
}


enum Screens: View {
    
    case two
    case three
    case four
    
    var body: some View {
        switch self {
            
        case .two:
            return AnyView(TrackerView())
        case .three:
            return AnyView(ThreePlayerTrackerView())
        case .four:
            return AnyView(TrackerView())
        }
    }
    
}

struct PlayerSection_Previews: PreviewProvider {
    static var previews: some View {
        PlayerSection()
    }
}


//struct SomeView: View {
//
//
//
//    var theView: some View {
//
//    }
//}
