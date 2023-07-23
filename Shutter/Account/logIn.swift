//
//  logIn.swift
//  Shutter
//
//  Created by Hamza Osama on 23/07/2023.
//

import SwiftUI

struct logIn: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "multiply")
                    .frame(width: 16, height: 16)
                    .padding()
                
                Spacer()
                
                Text("Login")
                    .font(.custom("Vollkorn-SemiBold", size: 18))
                    .padding(.trailing, 163)
            }
            Spacer()
        }
    }
}

struct logIn_Previews: PreviewProvider {
    static var previews: some View {
        logIn()
    }
}
