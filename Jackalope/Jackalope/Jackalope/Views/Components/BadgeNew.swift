//
//  BadgeNew.swift
//  Jackalope
//
//  Created by Joseph Larama on 2/11/22.
//

import SwiftUI

struct BadgeNew: View {
    var body: some View {
        Text("New")
            .padding(8)
            .foregroundColor(Color.black)
            .background(Color.white)
            .cornerRadius(8.0)
    }
}

struct BadgeNew_Previews: PreviewProvider {
    static var previews: some View {
        BadgeNew()
            .preferredColorScheme(.dark)
    }
}
