//
//  MainTabView.swift
//  SwiftUI_Chat_App
//
//  Created by Eldar Gaiypov on 22/12/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        NavigationView {
            TabView {
                ConversetionView()
                    .tabItem { Image(systemName: "bubble.left") }
                
                ChannelsView()
                    .tabItem { Image(systemName: "bubble.left.and.bubble.right") }
                
                SettingsView()
                    .tabItem { Image(systemName: "gear") }
            }
        }
    }
}

#Preview {
    MainTabView()
}
