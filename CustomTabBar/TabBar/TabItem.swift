//
//  TabItem.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/18/21.
//

import Foundation

enum TabItem: CaseIterable, Identifiable {
    
    case general
    case contacts
    case documents
    case menu
    
    var id: Int {
        switch self {
        case .general: return self.hashValue
        case .contacts: return self.hashValue
        case .documents: return self.hashValue
        case .menu: return self.hashValue
        }
    }
    
    var imageName: String {
        switch self {
        case .general: return "house.circle"
        case .contacts: return "person.circle"
        case .documents: return "doc.circle"
        case .menu: return "line.horizontal.3.circle"
        }
    }
}
