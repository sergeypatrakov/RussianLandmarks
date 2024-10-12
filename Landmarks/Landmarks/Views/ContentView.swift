//
//  ContentView.swift
//  Landmarks
//
//  Created by Sergey Patrakov on 11.10.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
