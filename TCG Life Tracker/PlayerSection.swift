//
//  PlayerSection.swift
//  TCG Life Tracker
//
//  Created by Jonathan Vale on 3/2/23.
//

import SwiftUI

struct PlayerSection: View {
    @State var screenType: Screens = .one
    let num = 1
    var body: some View {
        VStack {
            switch screenType {
            case .one:
                Screens.one.body
            case .two:
                Screens.three.body
            case .three, .four:
                Screens.one.body
                // screenType = .three

            }
        }
    }
}


enum Screens: View {
    case one
    case two
    case three
    case four
    
    var body: some View {
        switch self {
        case .one:
            return AnyView(TrackerView())
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
