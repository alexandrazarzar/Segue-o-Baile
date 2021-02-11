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
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.showingImagePicker = true
            }) {
                Text("")
                    .padding()
                    .frame(width: 50, height: 51)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
        //}
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
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
