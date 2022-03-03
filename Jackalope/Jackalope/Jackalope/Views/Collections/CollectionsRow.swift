//
//  CategoryRow.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/30/22.
//

import SwiftUI

struct CollectionsRow: View {
    
    var collectionsGrid = [
        GridItem(.flexible(), spacing: 12),
    ]
    let items = 1...8
    
    var body: some View {
        VStack {
            Text("Collections")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: collectionsGrid, spacing: 12) {
                    ForEach(items, id: \.self) { item in
                        CollectionCard()
                            .frame(width: UIScreen.main.bounds.width * 0.50)
                    }
                }
                .frame(height: 300)
                .padding(.horizontal)
            }
        }
    }
}

struct CollectionsRow_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsRow()
    }
}
