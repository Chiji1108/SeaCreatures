//
//  SeaCreatureDetailView.swift
//  SeaCreatures
//
//  Created by 千々岩真吾 on 2025/02/02.
//

import RealityKit
import RealityKitContent
import SwiftUI

struct SeaCreatureDetailView: View {
    let modelName: String

    var body: some View {
        Model3D(named: modelName, bundle: realityKitContentBundle)
    }
}

#Preview {
    SeaCreatureDetailView(modelName: "FishScene")
}
