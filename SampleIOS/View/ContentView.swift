//
//  ContentView.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 2/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured // Add a state variable for the tab selection, and give it a default value.
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
