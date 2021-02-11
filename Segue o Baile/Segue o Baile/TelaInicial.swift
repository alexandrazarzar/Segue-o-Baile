//
//  TelaInicial.swift
//  Segue o Baile
//
//  Created by Alexandra Zarzar on 09/02/21.
//

import SwiftUI

struct TelaInicial: View {
    @State private var showingImagePicker = false
    @State private var showingImageOptions = false
    @State private var inputImage: UIImage?
    @State  var image: Image?
    @State var sourceType: UIImagePickerController.SourceType = .camera
    @State var costumeViewIsActive = false

    
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(
                    destination: CostumeView(image: $image),
                    isActive: $costumeViewIsActive) {
                    EmptyView()
                }
                Image("confetti")
                
                VStack{
                    
                    Image("mascara")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    
                    Text("Saudades do carnaval, né minha filha?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 119/255, green: 62/255, blue: 169/255))
                        .frame(width: 251, height: 85, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    
                    Text("Mas não desanime")
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 119/255, green: 62/255, blue: 169/255))
                        .multilineTextAlignment(.center)
                    
                    ZStack{
                    Image("estandarte")
                        .resizable()
                        .frame(width: 297, height: 275, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .aspectRatio(contentMode: .fit)
                        
                    VStack{
                        Text("SEGUE O BAILE!")
                            .frame(width: 216, height: 114, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(red: 234/255, green: 58/255, blue: 122/255))
                            .font(Font.custom("Fiesta Rumba", size: 36))
                            .multilineTextAlignment(.center)

                            
                        Text("Tire uma foto, customize-a e mande para a galera! Vamos levar um pouco da folia pra dentro de casa e levantar o astral do pessoal.")
                            .fontWeight(.medium)
                            .frame(width: 260, height: 85)
                            .font(Font.custom("SF Pro Rounded", size: 15))
                            .foregroundColor(Color(red: 0, green: 67/255, blue: 177/255))
                            .multilineTextAlignment(.center)
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        
                        Image("rodape")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .edgesIgnoringSafeArea(.all)
                        
                        Button(action: {
                            self.showingImageOptions = true
                        }) {
                            Text("começar")
                                .padding()
                                .frame(width: 191, height: 51)
                                .background(Color.init(red: 119/255, green: 62/255, blue: 169/255))
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }
                        .padding(.bottom, 175)
                    }
                }
                .actionSheet(isPresented: $showingImageOptions, content: {
                    ActionSheet(title: Text("Ttulo"), message: Text("mensagem"), buttons: [
                                    .default(Text("Câmera")) {
                                        //ImagePicker(image: $inputImage, sourceType: .camera)
                                        //loadImage()
                                        sourceType = .camera
                                        showingImagePicker = true
                                    },
                                    .default(Text("Galeria")) {
                                        sourceType = .photoLibrary
                                        showingImagePicker = true

                                       // ImagePicker(image: $inputImage, sourceType: .photoLibrary)
                                        //loadImage()
                                    },
                                    .cancel()
                    ])
                })
                .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                    ImagePicker(image: self.$inputImage, sourceType: sourceType)
                }
                
            }
            .ignoresSafeArea()
            .background(Color(red: 0.945098, green: 0.976470, blue: 0.984313)
                            .edgesIgnoringSafeArea(.top)
        )
        } .accentColor(.white)
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
        costumeViewIsActive = true
    }
}

struct TelaInicial_Previews: PreviewProvider {
    static var previews: some View {
        TelaInicial()
    }
}
