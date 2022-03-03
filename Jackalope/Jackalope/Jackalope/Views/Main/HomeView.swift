//
//  HomeView.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/16/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    CategoryRow()
                    CollectionsRow()
                    TipsList(tips: Tip.all)
                }
            }
            .navigationTitle("")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        
                        NavigationLink(destination: FavoritesView()) {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }
                        NavigationLink(destination: FavoritesView()) {
                            Image(systemName: "star")
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape")
                                .font(.title2)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.bottom, 12)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}
