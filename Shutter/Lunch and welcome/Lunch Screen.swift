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
            Color("0B0B0C")
                .ignoresSafeArea()
            
            Image("lunchImage")
                .padding(.top, 110)
            Image("logo")
        }
    }
}

struct Lunch_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Lunch_Screen()
    }
}
