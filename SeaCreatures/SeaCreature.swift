//
//  SeaCreature.swift
//  SeaCreatures
//
//  Created by 千々岩真吾 on 2025/02/02.
//

import Foundation

struct SeaCreature: Identifiable, Hashable {
    var name: String
    var modelName: String
    var id = UUID()
}
