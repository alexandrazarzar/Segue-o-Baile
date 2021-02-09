//
//  Fantasy.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import Foundation
import SwiftUI

class Costume: ObservableObject {
    
    @Published var imageCostume: String?
    
    init(imageCostume: String) {
        self.imageCostume = imageCostume
    }
    
}
