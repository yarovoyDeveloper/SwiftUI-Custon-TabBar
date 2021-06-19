//
//  AppTabBarViewModel.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import Foundation
import Combine

final class GeneralSteck: ObservableObject {
    
    @Published var general = UUID()
    @Published var general2 = UUID()
    @Published var test = UUID()
    @Published var test2 = UUID()
}


final class AppTabBarViewModel: ObservableObject {
    
    @Published var selectedItem: TabItem = .general {
        willSet {
            if newValue == selectedItem {
                toRoot = true
            }
        }
    }
    
    @Published var toRoot: Bool = false {
        didSet {
            guard toRoot else { return }
            
            switch selectedItem {
            case .general:
                general = UUID()
            case .contacts:
                contacts = UUID()
            case .documents:
                documents = UUID()
            case .menu:
                menu = UUID()
            }
            
            self.toRoot = false
        }
    }
    
    var general = UUID()
    var contacts = UUID()
    var documents = UUID()
    var menu = UUID()
}
