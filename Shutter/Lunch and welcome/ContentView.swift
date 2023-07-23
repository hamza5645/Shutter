//
//  ContentView.swift
//  Shutter
//
//  Created by Hamza Osama on 15/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var lunchScreen: Bool = false
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

