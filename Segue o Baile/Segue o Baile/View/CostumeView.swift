//
//  ScrollViews.swift
//  Segue o Baile
//
//  Created by Meyrillan Silva on 08/02/21.
//

import SwiftUI

struct CostumeView: View {
    var body: some View {
        VStack {
            CategoriesScroll()
        }
    }
}

struct ScrollViews_Previews: PreviewProvider {
    static var previews: some View {
        CostumeView()
    }
}
