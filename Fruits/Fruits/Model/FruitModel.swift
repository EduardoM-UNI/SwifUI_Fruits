//
//  FruitModel.swift
//  Fruits
//
//  Created by Eduardo Monroy Husillos on 25/7/21.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruits: Identifiable {
    var id = UUID()
    var title: String
    var headLine: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
