//
//  CostumesScroll.swift
//  Segue o Baile
//
//  Created by Jéssica Amaral on 10/02/21.
//

import SwiftUI

struct CostumesScroll: View {
    //colocar tamanho, localização e istapped na categoriesscroll,
    //criar outra view pra posicionar as imagens (usar zstack pra ela ficar atrás das outras e na frente da foto): nela, tentar mudar tbm o istapped ao clicar na fantasia  
    @ObservedObject var dados: Data
    @Binding var categorySelected: Int
    @State var costumeSelected: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<dados.categories[categorySelected].costume.count, id:\.self) { count in
                    Button(action: {
                        
                        costumeSelected = count

                        dados.categories[categorySelected].costumeSelectedIndex = count
                           
                        if count == 0 {
                            dados.categories[categorySelected].costumeSelected = ""
                                
                        } else {
                            dados.categories[categorySelected].costumeSelected = dados.categories[categorySelected].costume[count].imageCostume!
                        }
                        
                    }, label: {
                        
                        ZStack {
                            
                            if dados.categories[categorySelected].costumeSelectedIndex != count {
                                
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 48, height: 48)

                                if count == 0 {
                                        Image(systemName: "nosign")
                                            .resizable()
                                            .foregroundColor(.gray)
                                            .frame(width: 32, height: 32)
                                            .padding()
                                    } else {
                                        Image(dados.categories[categorySelected].costume[count].imageCostume!)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 32, height: 32)
                                            .padding()
                                    }
                                
                            } else {
                                
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                                    .frame(width: 60, height: 60)
                                
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 50, height: 50)

                                if count == 0 {
                                        Image(systemName: "nosign")
                                            .resizable()
                                            .foregroundColor(.gray)
                                            .frame(width: 36, height: 36)
                                            .padding()
                                    } else {
                                        Image(dados.categories[categorySelected].costume[count].imageCostume!)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 36, height: 36)
                                            .padding()
                                    }
                                
                            }
                        }
                        .padding(.leading)
                    })
                }
            }
        }
        
    }
    
}

//struct CostumesScroll_Previews: PreviewProvider {
//    static var previews: some View {
//        CostumesScroll(dados: .constant(Data.init()), categorySelected: .constant(1))
//    }
//}

struct SelectedFantasy: View {
    @ObservedObject var dados: Data
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            ForEach(0..<dados.categories.count, id: \.self) { category in
                WearCostumeView(category: dados.categories[category])
            }
        }
    }
}
