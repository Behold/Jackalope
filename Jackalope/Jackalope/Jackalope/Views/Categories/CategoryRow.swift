//
//  CategoryRow.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/30/22.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryGrid = [
        GridItem(.fixed(75), spacing: 12),
        GridItem(.fixed(75))
    ]
    
    var body: some View {
        VStack {
            Text("Categories")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: categoryGrid, spacing: 12) {
                    ForEach(Category.allCases) { category in
                        NavigationLink {
                            ScrollView {
                                Text(category.description)
                                    .padding()
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.leading)
                                TipsList(tips: Tip.all.filter{ $0.category == category.rawValue})
                                    .padding(.vertical)
                                    .background(Color(.systemGray5))
                                    .ignoresSafeArea(.container, edges: .bottom)
                            }
                            .navigationBarTitleDisplayMode(.large)
                            .navigationTitle(category.rawValue)
                            .ignoresSafeArea(.container, edges: .bottom)
                        }   label: {
                                CategoryCard(categoryName: category.rawValue, icon: category.icon)
                        }
                        .frame(height: 150)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}
