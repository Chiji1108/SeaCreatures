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
    @Environment(\.openWindow) private var openWindow
    @State private var selectedCreature: SeaCreature?

    private var seaCreatures: [SeaCreature] = [
        SeaCreature(name: "Clam", modelName: "ClamScene"),
        SeaCreature(name: "Fish", modelName: "FishScene"),
        SeaCreature(name: "Slug", modelName: "SlugScene"),
        SeaCreature(name: "Starfish", modelName: "StarfishScene"),
    ]

    var body: some View {
        NavigationSplitView {
            List(seaCreatures) { creature in
                Button(
                    action: {
                        selectedCreature = creature
                    },
                    label: {
                        Text(creature.name)
                    })
            }
            .navigationTitle("Sea Creatures")
        } detail: {
            if let selectedCreature {
                Model3D(named: selectedCreature.modelName, bundle: realityKitContentBundle)
                    .navigationTitle(selectedCreature.name)
                    .toolbar {
                        Button(
                            action: {
                                openWindow(id: "creatureWindow", value: selectedCreature.modelName)
                            },
                            label: {
                                Text("View \(selectedCreature.name)")
                            })
                    }
            } else {
                Text("Select a sea creature")
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
