//
//  WearCostumeView.swift
//  Segue o Baile
//
//  Created by Jéssica Amaral on 10/02/21.
//

import SwiftUI

struct WearCostumeView: View {
    @ObservedObject var category: Category
    
    @State var resizeBy = CGFloat(1.0)
    @State var color = Color.clear
    
    var selectOutfit: some Gesture {
        TapGesture(count: 1)
            .onEnded { value in
                category.costume[category.costumeSelectedIndex].isTapped.toggle()
                if category.costume[category.costumeSelectedIndex].isTapped {
                    //color = Color.yellow
                } else {
                    //color = Color.clear
                }
                
            }
    }
    
    var dragOutfit: some Gesture {
        DragGesture()
            .onChanged { value in
                category.location = value.location
                //color = Color.yellow
            }
            .onEnded { _ in
                //color = Color.clear
            }
    }
    
    var resizeOutfit: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                resizeBy = value.magnitude
                //color = Color.clear
            }
            .onEnded { value in
                resizeBy = 1.0
                category.size.width = category.size.width * value
                category.size.height = category.size.height * value
                //color = Color.yellow
            }
    }
    
    var body: some View {
        if category.costumeSelectedIndex != 0 {
            ZStack {
                Rectangle().stroke(Color.clear, lineWidth: 3)
                    .foregroundColor(.clear)
                    .frame(width: category.size.width, height: category.size.height)
                
                Image(category.costume[category.costumeSelectedIndex].imageCostume!)
                    .resizable()
                    .gesture(selectOutfit)
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(resizeBy, anchor: .center)
                    .frame(width: category.size.width-30, height: category.size.height-30, alignment: .center)
                    .border(color, width: 2)
                    .position(category.location)
                    .gesture(dragOutfit)
                    .gesture(resizeOutfit)
            }
        }
//        if category.costumeSelectedIndex != 0 {
//
//            if category.costume[category.costumeSelectedIndex].isTapped {
//                Image(category.costume[category.costumeSelectedIndex].imageCostume!)
//                    .resizable()
//                    .scaleEffect(resizeBy, anchor: .center)
//                    .position(category.location)
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: category.size.width, height: category.size.height, alignment: .center)
//                    .gesture(selectOutfit)
//                    .gesture(dragOutfit)
//                    .gesture(resizeOutfit)
//            } else {
//                Image(category.costume[category.costumeSelectedIndex].imageCostume!)
//                    .resizable()
//                    .scaleEffect(resizeBy, anchor: .center)
//                    .position(category.location)
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: category.size.width, height: category.size.height, alignment: .center)
//                    .gesture(selectOutfit)
//            }
//        }
    }
}

//struct WearCostumeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WearCostumeView()
//    }
//}
