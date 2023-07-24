//
//  ShutterApp.swift
//  Shutter
//
//  Created by Hamza Osama on 15/07/2023.
//

import SwiftUI
import Firebase

@main
struct ShutterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.colorScheme, .light)
                .transition(.scale)
        }
        
        WindowGroup {
            welcomeOne()
                .environment(\.colorScheme, .light)
        }
        
        WindowGroup {
            welcomeTwo()
                .environment(\.colorScheme, .light)
        }
        WindowGroup {
            welcomeThree()
                .environment(\.colorScheme, .light)
        }
        
        WindowGroup {
            Home_page()
                .environment(\.colorScheme, .light)
        }
    }
}
