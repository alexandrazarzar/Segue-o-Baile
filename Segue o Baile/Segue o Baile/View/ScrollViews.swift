//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        CategoriesScroll()
    }
}

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
                
            } .background(Color("backgroundCategories"))
            
        }
    }
    
}

struct CostumesScroll: View {
    
    @Binding var dados: Data
    @Binding var categorySelected: Int
    @Binding var costumeSelected: Int
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<dados.categories[categorySelected].costume.count, id:\.self) { count in
                    Button(action: {
                        
                        costumeSelected = count
                        
                    }, label: {
                        
                        ZStack {
                            
                            if costumeSelected != count {
                             
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 48, height: 48)
                                
                                Image(dados.categories[categorySelected].costume[count].imageCostume!)
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                    .padding()
                                
                            } else {
                                
                                Circle().stroke(Color.blue, lineWidth: 3)
                                    .foregroundColor(.black)
                                    .frame(width: 60, height: 60)
                                
                                Image(dados.categories[categorySelected].costume[count].imageCostume!)
                                    .resizable()
                                    .frame(width: 36, height: 36)
                                    .padding()
                                
                            }
                            
                        }
                        
                        .padding(.leading)
                    })
                }
            }
        }
    }
    
}


struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViews()
    }
}
