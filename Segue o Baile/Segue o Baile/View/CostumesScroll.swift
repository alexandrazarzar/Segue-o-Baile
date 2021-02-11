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

struct CostumesScroll_Previews: PreviewProvider {
    static var previews: some View {
        CostumesScroll(dados: .constant(Data.init()), categorySelected: .constant(1), costumeSelected: .constant(0))
    }
}
