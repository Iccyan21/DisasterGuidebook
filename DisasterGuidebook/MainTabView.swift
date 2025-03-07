//
//  MainTabView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/11.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedItem = 0
    
    var body: some View {
        TabView(selection: $selectedItem){
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("setting")
                }.tag(1)
        }
    }
}

#Preview {
    MainTabView()
}
