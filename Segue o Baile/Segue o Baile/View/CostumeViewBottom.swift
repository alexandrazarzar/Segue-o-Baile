//
//  CostumeViewBottom.swift
//  Segue o Baile
//
//  Created by Alexandra Zarzar on 10/02/21.
//

import SwiftUI

struct CostumeViewBottom: View {
    @Binding  var image: Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @Binding var sourceType: UIImagePickerController.SourceType

    
    var body: some View {
        
        //VStack{
        ZStack{
            
            Image("rodape-azul")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.16, alignment: .center)
            
            HStack(spacing: UIScreen.main.bounds.width * 0.3) {
                Button(action: {//botao galeria
                    sourceType = .photoLibrary
                    self.showingImagePicker = true
                }) {
                    Image(systemName: "photo.fill")
                        .resizable()
                        .frame(width: 40, height: 32)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    
                }, label: {
                    ZStack{
                        Circle()
                            .frame(width: 60, height: 60, alignment: .center)
                            .foregroundColor(Color(#colorLiteral(red: 0.9176470588, green: 0.2274509804, blue: 0.4784313725, alpha: 1)))
                        
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .frame(width: 30, height: 40, alignment: .center)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            
                    }
                })
                
                Button(action: {// botao camera
                    sourceType = .camera
                    self.showingImagePicker = true
                }) {
                    Image(systemName: "camera.fill")
                        .resizable()
                        .frame(width: 40, height: 32)
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.white)
                }
                
            }
        }
        //}
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage, sourceType: sourceType)
            //}
        }
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}


struct CostumeViewBottom_Previews: PreviewProvider {
    static var previews: some View {
        CostumeViewBottom(image: .constant(Image(systemName: "heart")), sourceType: .constant(.camera))
    }
}
