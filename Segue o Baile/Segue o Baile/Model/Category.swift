//
//  Category.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import Foundation
import SwiftUI

class Category: ObservableObject {
    
    @Published var name: String
    @Published var costume: [Costume]
    @Published var size: CGSize
    @Published var location: CGPoint
    @Published var costumeSelected: String
    @Published var costumeSelectedIndex: Int
    
    
    init(name:String, selected: Bool, costume: [Costume], size: CGSize, location: CGPoint, costumeSelected: String, costumeSelectedIndex: Int) {
        self.name = name
        self.costume = costume
        self.size = size
        self.location = location
        self.costumeSelected = costumeSelected
        self.costumeSelectedIndex = costumeSelectedIndex
    }
}
