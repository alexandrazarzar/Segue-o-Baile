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
    
    var body: some View {
        
        //VStack{
        ZStack{
            
            Image("rodape-azul")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
            
            Button(action: {
                self.showingImagePicker = true
            }) {
                Circle()
                    .frame(width: 50, height: 51)
                    .foregroundColor(.white)
            }
        }
        //}
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage, sourceType: .photoLibrary)
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
        CostumeViewBottom(image: .constant(Image(systemName: "heart")))
    }
}
