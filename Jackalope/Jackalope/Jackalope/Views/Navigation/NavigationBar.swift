//
//  NavigationBar.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/29/22.
//

import SwiftUI

struct NavigationBar: View {
    var navTitle = ""
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10)

            Text(navTitle)
                .font(.largeTitle.weight(.bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            
            HStack(spacing: 16) {
                Button(action: {
                    print("Search Action")
                }) {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.secondary)
                }
                
                Image(systemName: "star")
                    .font(.title)
                    .foregroundColor(.secondary)
                Image(systemName: "gearshape")
                    .font(.title)
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 20)
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(navTitle: "Title")
    }
}
