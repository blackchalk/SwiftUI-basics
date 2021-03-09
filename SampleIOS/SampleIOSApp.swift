//
//  SampleIOSApp.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 2/17/21.
//

import SwiftUI

@main
struct SampleIOSApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
            
        }
    }
}
