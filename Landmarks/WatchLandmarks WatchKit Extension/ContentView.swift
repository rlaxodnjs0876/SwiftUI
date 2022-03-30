//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by 김태원 on 2022/03/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}