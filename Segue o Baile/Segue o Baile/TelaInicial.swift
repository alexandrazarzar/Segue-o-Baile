//
//  TelaInicial.swift
//  Segue o Baile
//
//  Created by Alexandra Zarzar on 09/02/21.
//

import SwiftUI

struct TelaInicial: View {
    
    var body: some View {
        ZStack{
            Image("confetti")
            
            VStack{
                
                Image("mascara")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("Saudades do carnaval, né minha filha?")
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 119/255, green: 62/255, blue: 169/255))
                    .multilineTextAlignment(.center)
                Text("Mas não desanime")
                    .foregroundColor(Color(red: 119/255, green: 62/255, blue: 169/255))
                    .multilineTextAlignment(.center)
                
                ZStack{
                Image("estandarte")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 50)
                VStack{
                    Text("Segue o baile!")
                        .font(.largeTitle)
                        .padding()
                    Text("Tire uma foto, customize-a e mande para a galera! Vamos levar um pouco da folia pra dentro de casa e levantar o astral do pessoal.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 60)
                    }
                }
                
                Spacer()
                
                ZStack{
                    
                    Image("rodape")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.all)
                    
                    Button(action: {
                        // What to perform
                    }) {
                        Text("começar")
                            .padding()
                            .frame(width: 191, height: 51)
                            .background(Color.init(red: 119/255, green: 62/255, blue: 169/255))
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                }
            }
            
            
        }
        .ignoresSafeArea()
        .background(Color(red: 0.945098, green: 0.976470, blue: 0.984313)
        )
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicial()
    }
}
