//
//  FavoritesView.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("No Favorites Yet!")
                .padding()
                .navigationTitle("Favorites")
        }
        .ignoresSafeArea(.all)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
