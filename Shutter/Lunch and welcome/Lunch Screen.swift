//
//  Lunch Screen.swift
//  Shutter
//
//  Created by Hamza Osama on 15/07/2023.
//

import SwiftUI

struct Lunch_Screen: View {
    var body: some View {
        ZStack {
            Color.lunchScreenGray
                .ignoresSafeArea()
            
            Image("lunchImage")
                .padding(.top, 110)
            Image("logo")
        }
    }
}

#Preview {
    Lunch_Screen()
}
