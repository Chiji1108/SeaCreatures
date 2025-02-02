//
//  ContentView.swift
//  SeaCreatures
//
//  Created by 千々岩真吾 on 2025/02/02.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "SlugScene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
