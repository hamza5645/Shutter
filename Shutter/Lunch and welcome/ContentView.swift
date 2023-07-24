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
    @State private var userIsLoggedIn = false
    var body: some View {
        ZStack {
            if lunchScreen {
                welcomeOne()
            } else {
                Lunch_Screen()
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
    var content: some View {
        ZStack {
            if userIsLoggedIn {
                sessions()
            } else {
                sessions_loggedOut_()
            }
        }
        .onAppear {
            Auth.auth().addStateDidChangeListener { auth, user in
                if user != nil {
                    userIsLoggedIn.toggle()
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

