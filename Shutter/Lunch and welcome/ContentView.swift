//
//  ContentView.swift
//  Shutter
//
//  Created by Hamza Osama on 15/07/2023.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var lunchScreen: Bool = false
    @AppStorage("uid") var userID: String = ""
    var body: some View {
        ZStack {
            if userID == "" {
                if lunchScreen {
                    welcomeOne()
                } else {
                    Lunch_Screen()
                }
            } else {
                Home_page()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.lunchScreen = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

