//
//  AppTabBar.swift
//  MariaTabBar
//
//  Created by Дмитрий Яровой on 6/17/21.
//

import SwiftUI

struct AppTabBar: View {
    
    @StateObject var viewModel = AppTabBarViewModel()
    
    var body: some View {
        ZStack {
            
            generalScreen
            contactsScreen
            documentsScreen
            menuView
            
            VStack {
                Spacer()
                tabView
            }
            .zIndex(2)
            
        }
    }
}

private extension AppTabBar {
    
    var generalScreen: some View {
        NavigationView {
            GeneralView()
                .id(viewModel.general)
                .ignoresSafeArea(.container, edges: .bottom)
        }
        .zIndex(viewModel.selectedItem == .general ? 1 : 0)
    }
    
    var contactsScreen: some View {
        NavigationView {
            CatalogView()
                .id(viewModel.contacts)
                .ignoresSafeArea(.container, edges: .bottom)
        }
        .zIndex(viewModel.selectedItem == .contacts ? 1 : 0)
    }
    
    var documentsScreen: some View {
        NavigationView {
            DocumentsView()
                .id(viewModel.documents)
                .ignoresSafeArea(.container, edges: .bottom)
        }
        .zIndex(viewModel.selectedItem == .documents ? 1 : 0)
    }
    
    var menuView: some View {
        NavigationView {
            MenuView()
                .id(viewModel.menu)
                .ignoresSafeArea(.container, edges: .bottom)
        }
        .zIndex(viewModel.selectedItem == .menu ? 1 : 0)
    }
    
    var tabView: some View {
        HStack(spacing: 24) {
            ForEach(TabItem.allCases) { item in
                itemButton(item: item)
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 10)
        .frame(height: 56, alignment: .center)
        .background(Color.white)
        .cornerRadius(24)
        .padding(.horizontal, 55)
        .padding(.bottom, 35)
        .shadow(color: .black.opacity(0.2),
                radius: 2, x: 0.0, y: 1.0)
    }
    
    func itemButton(item: TabItem) -> some View {
        Button(action: { viewModel.selectedItem = item }, label: {
            if viewModel.selectedItem == item {
                Image(systemName: item.imageName)
                    .itemImage(with: .red)
            } else {
                Image(systemName: item.imageName)
                    .itemImage(with: .gray)
            }
        })
    }
}

struct AppTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBar()
    }
}

fileprivate extension Image {
    
    func itemImage(with color: Color) -> some View {
        self
            .resizable()
            .frame(width: 30, height: 30, alignment: .center)
            .foregroundColor(color)
    }
}
