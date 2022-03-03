//
//  TipCard.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import SwiftUI

struct CollectionCard: View {

    var body: some View {
        VStack(spacing: 0.0) {
            GeometryReader { geo in
                ZStack {
                    Image("collection-placeholder")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .overlay(
                            HStack {
                                BadgeNew()
                            }
                                .padding(),
                            alignment: .topTrailing
                        )
                }
            }
            GeometryReader { geo in
                VStack(alignment: .leading, spacing: 8.0) {
                    VStack {
                        Text("Confidence on the teebox")
                            .font(.title3)
                            .lineLimit(2)
                    }
                    .padding([.top, .leading, .trailing])
                    Text("Keep yourself out of trouble and in the fairway")
                        .font(.body)
                        .foregroundColor(Color(.systemGray))
                        .lineLimit(3)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .bottom])
                }
                .frame(width: geo.size.width, height:  geo.size.height, alignment: .topLeading)
                .background(Color(.systemGray5))
                
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .ignoresSafeArea(.all)
    }
}

struct CollectionCard_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCard()
    }
}
