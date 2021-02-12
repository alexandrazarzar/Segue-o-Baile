//
//  Data.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import Foundation
import SwiftUI

class Data: ObservableObject {
    
    @Published var categories: [Category] = []
    
    init() {
        
        // Fantasy Category 1
        self.categories.append(Category.init(name: "Chapéus", selected: false, costume: [], size: CGSize(width: 100, height: 100), location: CGPoint(x: 10, y: 10), costumeSelected: "", costumeSelectedIndex: 0))
        // images
        self.categories[0].costume.append(Costume.init(imageCostume: "none", isTapped: false))
        for number in 1...25 {
            self.categories[0].costume.append(Costume.init(imageCostume: "chapeu" + String(number), isTapped: false))
        }
         
        // Fantasy Category 2
        self.categories.append(Category.init(name: "Máscaras", selected: false, costume: [], size: CGSize(width: 100, height: 100), location: CGPoint(x: 10, y: 10), costumeSelected: "", costumeSelectedIndex: 0))
        // images Mascaras
        self.categories[1].costume.append(Costume.init(imageCostume: "none", isTapped: false))
        for number in 1...23 {
            self.categories[1].costume.append(Costume.init(imageCostume: "mascara" + String(number), isTapped: false))
        }
        
        // Fantasy Category 3
        self.categories.append(Category.init(name: "Vestidos", selected: false, costume: [], size: CGSize(width: 100, height: 100), location: CGPoint(x: 20, y: 20), costumeSelected: "", costumeSelectedIndex: 0))
        // images Vestidos
        self.categories[2].costume.append(Costume.init(imageCostume: "none", isTapped: false))
        for number in 1...49 {
            self.categories[2].costume.append(Costume.init(imageCostume: "vestido" + String(number), isTapped: false))
        }
        
        // Fantasy Category 4
        self.categories.append(Category.init(name: "Camisas", selected: false, costume: [], size: CGSize(width: 200, height: 200), location: CGPoint(x: 30, y: 30), costumeSelected: "", costumeSelectedIndex: 0))
        // images Camisas
        self.categories[3].costume.append(Costume.init(imageCostume: "none", isTapped: false))
        for number in 1...23 {
            self.categories[3].costume.append(Costume.init(imageCostume: "camisa" + String(number), isTapped: false))
        }
        
        // Fantasy Category 5
        self.categories.append(Category.init(name: "Calças", selected: false, costume: [], size: CGSize(width: 100, height: 100), location: CGPoint(x: 30, y: 30), costumeSelected: "", costumeSelectedIndex: 0))
        // images Calças
        self.categories[4].costume.append(Costume.init(imageCostume: "none", isTapped: false))
        for number in 1...15 {
            self.categories[4].costume.append(Costume.init(imageCostume: "calca" + String(number), isTapped: false))
        }
        
        
    }
}
