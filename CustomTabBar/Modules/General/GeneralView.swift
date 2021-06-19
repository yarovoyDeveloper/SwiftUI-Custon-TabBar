//
//  GeneralView.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct GeneralView: View {
    
    var body: some View {
        VStack {
            Spacer()
            NavigationLink(
                destination: generalSecond,
                label: {
                    Text("To GeneralSecond")
                })
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .navigationBarTitle(Text("Details"), displayMode: .inline)
    }
    
    var generalSecond: some View {
        DetailsView()
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
