//
//  CategoriesScroll.swift
//  Segue o Baile
//
//  Created by Jéssica Amaral on 10/02/21.
//

import SwiftUI

struct CategoriesScroll: View {
    @State var dados = Data.init()
    @State var categorySelected: Int = 1
    @State var costumeSelected: Int = -1
    
    var body: some View {
        
        VStack {
            
            CostumesScroll(dados: $dados, categorySelected: $categorySelected, costumeSelected: $costumeSelected )
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<dados.categories.count, id: \.self) { count in
                        Button(action: {
                            categorySelected = count
                            
                        }, label: {
                            
                            if categorySelected != count {
                                Text(dados.categories[count].name)
                                    .foregroundColor(.white)
                            } else {
                                Text(dados.categories[count].name)
                                    .foregroundColor(.yellow)
                            }
                            
                        }) .padding([.leading])
                    }
                    .padding(5)
                }
                
            }
            .background(Color("backgroundCategories"))
        }
    }
    
}

struct CategoriesScroll_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesScroll()
    }
}
