//
//  Data.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import Foundation
import SwiftUI

class Data {
    
    var categories: [Category] = []
    
    init() {
        
        // Fantasy Category 1
        self.categories.append(Category.init(name: "Chapéus", selected: false, costume: []))
        // images 
         
        // Fantasy Category 2
        self.categories.append(Category.init(name: "Máscaras", selected: false, costume: []))
        // images Mascaras
        self.categories[1].costume.append(Costume.init(imageCostume: "spider-man"))
        self.categories[1].costume.append(Costume.init(imageCostume: "hulk"))
        self.categories[1].costume.append(Costume.init(imageCostume: "cat"))
        self.categories[1].costume.append(Costume.init(imageCostume: "spider-man"))
        self.categories[1].costume.append(Costume.init(imageCostume: "spider-man"))
        
        // Fantasy Category 3
        self.categories.append(Category.init(name: "Vestidos", selected: false, costume: []))
        // images Vestidos
        
        // Fantasy Category 4
        self.categories.append(Category.init(name: "Camisas", selected: false, costume: []))
        // images Camisas
        
        // Fantasy Category 5
        self.categories.append(Category.init(name: "Calças", selected: false, costume: []))
        // images Calças
        
        
        
    }
}
