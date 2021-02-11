//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct CostumeView: View {
    @Binding var image: Image?
    
    var body: some View {
        ZStack {
            if image != nil {
                image?
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.7)
                    .clipped()
            }
            
            VStack {
                Spacer()
                CategoriesScroll()
                    .padding(.bottom, -8)
                CostumeViewBottom(image: $image)
            }
            .edgesIgnoringSafeArea(.bottom)
        } .background(Color.init(#colorLiteral(red: 0.1647058824, green: 0.7568627451, blue: 0.862745098, alpha: 1)))
        .edgesIgnoringSafeArea(.top)
    }
}

struct CostumeView_Previews: PreviewProvider {
    static var previews: some View {
        CostumeView(image: .constant(Image(systemName: "heart")))
    }
}
