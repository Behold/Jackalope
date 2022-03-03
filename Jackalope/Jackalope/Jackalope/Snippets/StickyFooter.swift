//
//  ContentView.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/16/22.
//

import SwiftUI

struct StickyFooter: View {
    var body: some View {
      ScrollView {
        LazyVStack(spacing: 10, pinnedViews: [.sectionFooters]) {
          ForEach(0..<2, id: \.self) { index in
            Section(footer: FooterView(index: index)) {
              ForEach(0..<6) { _ in
                Rectangle().fill(Color.red).frame(height: 100).id(UUID())
              }
            }
          }
        }
      }
    }
}

struct FooterView: View {
  
  let index: Int
  
  var body: some View {
    VStack {
      Text("Footer \(index)").padding(5)
    }.background(RoundedRectangle(cornerRadius: 4.0).foregroundColor(.green))
  }
}

struct StickyFooter_Previews: PreviewProvider {
    static var previews: some View {
        StickyFooter()
    }
}
