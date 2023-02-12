//
//  ContentView.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Tab = .featured
  
  enum Tab {
    case featured
    case list
  }
  
  var body: some View {
    // Tab View coordinates which view to display when the user makes a selection
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
