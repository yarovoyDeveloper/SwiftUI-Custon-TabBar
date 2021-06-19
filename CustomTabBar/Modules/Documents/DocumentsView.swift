//
//  DocumentsView.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct DocumentsView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.orange)
        .navigationTitle("Documents")
    }
}

struct DocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsView()
    }
}
