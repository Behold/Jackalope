//
//  CategoryCard.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/29/22.
//

import SwiftUI

struct CategoryCard: View {
    var categoryName = ""
    var icon = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack(spacing: 10) {
                Image(systemName: icon)
                    .font(.system(size: 32, weight: .light))
                    .padding(8)
                    .background(Color.white)
                    .clipShape(Circle())
                Text(categoryName)
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Spacer()
            }
            .foregroundColor(Color.black)
            .padding(12)
            .frame(width: 220, height: 75)
        }
        .background(Color(.systemGray5))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(
            categoryName: ("Reading Greens"),
            icon: ("cruzeirosign.circle")
        )
        
    }
}
