//
//  DataTesting.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/30/22.
//

import SwiftUI

struct DataTesting: View {
    var body: some View {
        ForEach(Category.allCases) { category in
            VStack {
                Text(category.rawValue)
            }
        }
    }
}

struct DataTesting_Previews: PreviewProvider {
    static var previews: some View {
        DataTesting()
    }
}
