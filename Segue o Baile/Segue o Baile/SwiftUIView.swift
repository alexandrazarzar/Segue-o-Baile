//
//  SwiftUIView.swift
//  Segue o Baile
//
//  Created by Jéssica Amaral on 08/02/21.
//

import SwiftUI

struct MainView: View {
    @State var shirtName: String = ""
    @State var pantsName:String = ""
    
    var categories
    
    var body: some View {
        VStack {
            TestingTouches(imageName: shirtName)
            TestingTouches(imageName: pantsName)
            
            Button(action: {
                shirtName = "terno"
            }, label: {
                Text("Shirt")
            })
            
            Button(action: {
                shirtName = "terno2"
            }, label: {
                Text("Pants")
            })
        }
        
        
    }
}

struct TestingTouches: View {
    //Adicionar onTapGesture
    var imageName: String
    @State private var resizeBy = CGFloat(1.0)
    @State private var location = CGPoint(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.1)
    
    var resizeOutfit: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                self.resizeBy = value.magnitude
            }
    }
    
    var dragOutfit: some Gesture {
        DragGesture()
            .onChanged { value in
                self.location = value.location
            }
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaleEffect(resizeBy, anchor: .center)
            .position(location)
            .frame(width: 224, height: 340, alignment: .center)
            .gesture(dragOutfit)
            .gesture(resizeOutfit)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        //TestingTouches(imageName: .constant("terno"))
    }
}
