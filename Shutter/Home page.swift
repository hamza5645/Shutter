//
//  Home page.swift
//  Shutter
//
//  Created by Hamza Osama on 16/07/2023.
//

import SwiftUI

struct Home_page: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Photographers")
                        .font(.custom("Vollkorn-SemiBold", size: 32))
                        .padding(.horizontal)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Home_page()
}
