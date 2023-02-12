//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Stephanie Michael on 2/11/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
