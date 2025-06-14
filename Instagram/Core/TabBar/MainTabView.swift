//
//  MainTabView.swift
//  Instagram
//
//  Created by Aya on 07/06/2025.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)
            
            CurrentUserProfile()
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
