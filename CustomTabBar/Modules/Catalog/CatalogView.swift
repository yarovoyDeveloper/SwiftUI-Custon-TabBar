//
//  CatalogView.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct CatalogView: View {
    var body: some View {
        VStack {
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.green)
        .navigationTitle("Catalog")
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
