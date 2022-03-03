//
//  TipDetailsView.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import SwiftUI

struct TipDetailsView: View {
    var tip: Tip
    
    var body: some View {
        ScrollView {
            Image(tip.image)
                .resizable()
                .frame(height:  240)
            VStack(alignment: .leading, spacing: 30) {
                Text(tip.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)

                VStack(alignment: .leading, spacing: 30) {
                    if !tip.description.isEmpty {
                        Text(tip.description)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct TipDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TipDetailsView(tip: Tip.all[0])
    }
}
