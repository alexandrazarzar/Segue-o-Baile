//
//  WearCostumeView.swift
//  Segue o Baile
//
//  Created by Jéssica Amaral on 10/02/21.
//

import SwiftUI

struct WearCostumeView: View {
    //Adicionar onTapGesture
    @Binding var imageName: String
    @Binding var imageLocation: CGPoint
    @Binding var imageFrame: CGSize
    @Binding var isTapped: Bool
    
    @State var resizeBy = CGFloat(1.0)
    
    
    var resizeOutfit: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                self.resizeBy = value.magnitude
            }
    }
    
    var dragOutfit: some Gesture {
        DragGesture()
            .onChanged { value in
                self.imageLocation = value.location
            }
            
    }
    
    var body: some View {
        if isTapped {
            Image(imageName)
                .resizable()
                .scaleEffect(resizeBy, anchor: .center)
                .position(imageLocation)
                .frame(width: imageFrame.width, height: imageFrame.height, alignment: .center)
                .gesture(dragOutfit)
                .gesture(resizeOutfit)
        } else {
            
        }
    }
}

struct WearCostumeView_Previews: PreviewProvider {
    static var previews: some View {
        WearCostumeView(imageName: .constant("terno"), imageLocation: .constant(CGPoint(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.1)), imageFrame: .constant(CGSize(width: 224, height: 340)), isTapped: .constant(false))
    }
}
