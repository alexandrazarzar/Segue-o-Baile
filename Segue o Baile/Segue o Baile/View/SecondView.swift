//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

<<<<<<< HEAD:Segue o Baile/Segue o Baile/View/SecondView.swift
struct SecondView: View {
=======
struct CostumeView: View {
    @State var image: Image?
    
>>>>>>> telaInicial:Segue o Baile/Segue o Baile/View/CostumeView.swift
    var body: some View {
        ZStack {
            if image != nil {
                image?
                    .resizable()
                    .scaledToFit()
            }
            VStack {
                Spacer()
                CategoriesScroll() .padding(.bottom, -8)
                CostumeViewBottom(image: $image)
            } .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
