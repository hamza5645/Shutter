//
//  customTabBar.swift
//  Shutter
//
//  Created by Hamza Osama on 11/08/2023.
//

import SwiftUI

struct customTabBar: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Home_page().tabItem {
                VStack {
                    Image(tabSelection == 1 ? "homeBlack" : "home")
                        .frame(width: 24, height: 24)
                    
                    Text("Home")
                        .font(.custom("Muli", size: 12))
                }
            }
            .tag(1)
            
            sessions().tabItem {
                VStack {
                    Image(tabSelection == 2 ? "sessionsBlack" : "sessions")
                        .frame(width: 24, height: 24)
                    
                    Text("Sessions")
                        .font(.custom("Muli", size: 12))
                }
            }
            .tag(2)
            
            profile().tabItem {
                VStack {
                    Image(tabSelection == 3 ? "profileBlack" : "profile")
                        .frame(width: 24, height: 24)
                    
                    Text("Profile")
                        .font(.custom("Muli", size: 12))
                }
            }
            .tag(3)
        }
        .accentColor(.black)
    }
}

struct customTabBar_Previews: PreviewProvider {
    static var previews: some View {
        customTabBar()
    }
}
