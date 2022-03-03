//
//  TipsList.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import SwiftUI

struct TipsList: View {
    
    var tips: [Tip]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("\(tips.count) \(tips.count > 1 ? "tips" : "tip")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 12)], spacing: 16) {
                ForEach(tips) { tip in
                    NavigationLink(destination: TipDetailsView(tip: tip)) {
                        TipCard(tip: tip)
                    }
                }
            }
        }
        .padding(.horizontal)
        .ignoresSafeArea(.all)
    }
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            TipsList(tips: Tip.all)
        }
    }
}
