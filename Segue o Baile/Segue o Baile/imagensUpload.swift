//
//  imagensUpload.swift
//  Segue o Baile
//
//  Created by Alexandra Zarzar on 08/02/21.
//

import SwiftUI

struct imagensUpload: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?

    
    var body: some View {
        VStack {
            ZStack{
            Rectangle()
                .fill(Color.secondary)
            
            //display the image
            if image != nil {
                image?
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Tap to select a picture")
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
    }
        .onTapGesture {
            self.showingImagePicker = true
        }
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
        }
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct imagensUpload_Previews: PreviewProvider {
    static var previews: some View {
        imagensUpload()
            .previewDevice("iPhone 11")
    }
}
