//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct CostumeView: View {
    @State var image: Image?
    @ObservedObject var dados = Data.init()
    @Binding var sourceType: UIImagePickerController.SourceType
    @State var categorySelected: Int = 1
    @State var costumeSelected: Int = -1
    
    var body: some View {
        ZStack {
            FinalPhoto(image: $image, dados: dados)
            
            VStack {
                Spacer()
                CategoriesScroll(dados: dados, categorySelected: $categorySelected)
                    .padding(.bottom, -8)
                CostumeViewBottom(image: $image, sourceType: $sourceType)
            }
            .edgesIgnoringSafeArea(.bottom)
        } .background(Color.init(#colorLiteral(red: 0.1647058824, green: 0.7568627451, blue: 0.862745098, alpha: 1)))
        .edgesIgnoringSafeArea(.top)
    }
}

struct CostumeView_Previews: PreviewProvider {
    static var previews: some View {
        CostumeView(image: .constant(Image(systemName: "heart")), sourceType: .constant(.camera))
    }
}

struct FinalPhoto: View {
    @Binding var image: Image?
    @ObservedObject var dados: Data
    
    var body: some View {
        ZStack {
            if image != nil {
                image?
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
            }
            
            SelectedFantasy(dados: dados)
        }
    }
}
