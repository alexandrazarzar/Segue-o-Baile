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
    @Published var selected: Bool
    @Published var costume: [Costume]
    
    
    init(name:String, selected: Bool, costume: [Costume]) {
        self.name = name
        self.selected = selected
        self.costume = costume
    }
}
