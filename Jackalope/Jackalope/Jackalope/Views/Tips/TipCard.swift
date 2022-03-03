//
//  TipCard.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import SwiftUI

struct TipCard: View {
    var tip: Tip
    @State private var isFav = true
    @State private var isNew = true

    var body: some View {
        VStack(spacing: 0.0) {
            ZStack(alignment: .bottomTrailing) {
                Image(tip.image)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        HStack(spacing: 24) {
                            if tip.isFavorite {
                                favOverlay
                            }
                            newOverlay
                        }
                            .padding(),
                        alignment: .topTrailing
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            VStack(alignment: .leading, spacing: 4) {
                Text(tip.category)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                Text(tip.name)
                    .frame(maxWidth: .infinity, minHeight: 50, alignment: .topLeading)
                    .lineLimit(2)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            }
            .foregroundColor(.black)
            .padding(.top)
        }
        .ignoresSafeArea(.all)
    }
    
    @ViewBuilder private var favOverlay: some View {
        if isFav {
            Image(systemName: "star.fill")
                .foregroundColor(Color.yellow)
        }
    }
    @ViewBuilder private var newOverlay: some View {
        if isNew {
            BadgeNew()
        }
    }
}

struct TipCard_Previews: PreviewProvider {
    static var previews: some View {
        TipCard(tip: Tip.all[0])
    }
}
