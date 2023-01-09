//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by pat on 1/8/23.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("First line of 1st stack.")
                Text("@patgd")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                Image("buttercup")
                    .resizable()
                    .frame(width: 64, height: 64)
                Text("Final line of 1st stack.")
            }

            VStack {
                Text("First line of 2nd stack.")
                Text("Full name:")
                Text("Trick Grey")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center] }
                    .font(.largeTitle)
                Text("Final line of 2nd stack.")
            }
        }
        .frame(width: 800, height: 800)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
