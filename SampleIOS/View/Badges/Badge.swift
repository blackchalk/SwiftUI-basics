//
//  Badge.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 3/26/21.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    // Add a ForEach view to rotate and display copies of the badge symbol.
    var badgeSymbols: some View {
        // A full, 360° rotation split into eight segments creates a sun-like pattern by repeating the mountain symbol.
        ForEach(0..<Badge.rotationCount) { i in
            RotatedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
