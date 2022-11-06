//
//  MainTabBar.swift
//  Furniture_app
//
//  Created by Fatima Aljaber on 05/11/2022.
//

import SwiftUI

struct MainTabBar: View {
    
    var body: some View {
      
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: Tab.house.rawValue)
                }

            KidsActivity()
                .tabItem {
                    Label("activity", systemImage: Tab.activity.rawValue)
                }
            Favorite()
                .tabItem {
                    Label("Favorite", systemImage: Tab.heart.rawValue)
                }
            ProfileView()
                .tabItem {
                    Label("Account", systemImage: Tab.person.rawValue)
                }
        }.accentColor(Color("Primary"))
            
        

    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
