//
//  GeneralSecondView.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct DetailsView: View {
    
    @EnvironmentObject var generalStack: GeneralSteck
    @State var isActive = false
    
    var body: some View {
        VStack {
            
        }
        .navigationTitle("Details")
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
