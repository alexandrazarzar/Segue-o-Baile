//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct CostumeView: View {
    @State var image: Image?
    
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
        CostumeView()
    }
}
