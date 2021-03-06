////
////  SwiftUIView.swift
////  Segue o Baile
////
////  Created by Jéssica Amaral on 08/02/21.
////
//
//import SwiftUI
//
//struct MainView: View {
//    @State var shirtName: String = ""
//    @State var pantsName:String = ""
//    
//    @State var shirtLocation = CGPoint(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.5)
//    @State var pantsLocation = CGPoint(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.75)
//    
//    @State var pantsSize = CGSize(width: 250, height: 300)
//    @State var shirtSize = CGSize(width: 250, height: 300)
//    
//    @State var shirtTapped = false
//    @State var pantsTapped = false
//    
//    var shirt: some View {
//        WearCostume.init(imageName: $shirtName, imageLocation: $shirtLocation, imageFrame: $shirtSize, isTapped: $shirtTapped)
//        //            .onTapGesture {
//        //                //dar tapped na camisa e untap as outras
//        //            }
//    }
//    
//    var pants: some View {
//        WearCostumeView.init(imageName: $pantsName, imageLocation: $pantsLocation, imageFrame: $pantsSize, isTapped: $pantsTapped)
//    }
//    var body: some View {
//        ZStack {
//            Image("person")
//                .ignoresSafeArea(.all)
//            
//            VStack {
//                
//                ZStack {
//                    pants
//                    
//                    shirt
//                }
//                
//                Spacer()
//                
//                HStack {
//                    Button(action: {
//                        shirtName = "terno"
//                    }, label: {
//                        Text("Shirt")
//                    })
//                    Button(action: {
//                        pantsName = "pants"
//                    }, label: {
//                        Text("Pants")
//                    })
//                }
//                
//                
//            }
//        }
//        
//        
//    }
//}
//
//struct WearCostume: View {
//    //Adicionar onTapGesture
//    @Binding var imageName: String
//    @Binding var imageLocation: CGPoint
//    @Binding var imageFrame: CGSize
//    @Binding var isTapped: Bool
//    
//    @State var resizeBy = CGFloat(1.0)
//    
//    
//    var resizeOutfit: some Gesture {
//        MagnificationGesture()
//            .onChanged { value in
//                self.resizeBy = value.magnitude
//            }
//    }
//    
//    var dragOutfit: some Gesture {
//        DragGesture()
//            .onChanged { value in
//                self.imageLocation = value.location
//            }
//        
//    }
//    
//    var body: some View {
//        Image(imageName)
//            .resizable()
//            .scaleEffect(resizeBy, anchor: .center)
//            .position(imageLocation)
//            .frame(width: imageFrame.width, height: imageFrame.height, alignment: .center)
//            .gesture(dragOutfit)
//            .gesture(resizeOutfit)
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//        //TestingTouches(imageName: .constant("terno"), imageLocation: .constant(CGPoint(x: UIScreen.main.bounds.width * 0.25, y: UIScreen.main.bounds.height * 0.1)), imageFrame: .constant(CGSize(width: 224, height: 340)))
//    }
//}
