//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김태원 on 2022/03/15.
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
        
        #if os(macOS)
        Settings{
            LandmarkSettings()
        }
        #endif
    }
}
