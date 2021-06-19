//
//  MenuView.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .navigationTitle("Menu")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
