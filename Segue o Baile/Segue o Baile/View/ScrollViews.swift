//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        CategoriesScroll(dados: Data.init())
    }
}

struct CategoriesScroll: View {
    var dados: Data
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<dados.categories.count, id: \.self) { count in
                    Button(action: {
                        
                    }, label: {
                        Text(dados.categories[count].name)
                            .foregroundColor(.white)
                    }) .padding([.leading])
                }
            }
            .background(Color("backgroundCategories"))
        }
        
    }
    
}

//struct CostumesScroll: View {
//
//    var body: some View {
////        ScrollView(.horizontal)
//    }
//
//}


struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
