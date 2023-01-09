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
        Text("Hello, world!")
//            .background(.red)
            .offset(x: 100, y: 100)
            .background(.red)
            .frame(width: 500, height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
