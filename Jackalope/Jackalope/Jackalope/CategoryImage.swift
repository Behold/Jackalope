//
//  CategoryImage.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/16/22.
//

import SwiftUI

struct CategoryImage: View {
    var body: some View {
        Image("Rectangle-0")
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .frame(width: 300.0, height: 300.0)
            
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage()
    }
}
