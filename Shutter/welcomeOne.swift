//
//  introOne.swift
//  Shutter
//
//  Created by Hamza Osama on 15/07/2023.
//

import SwiftUI

struct welcomeOne: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Button {
                    //move to the main screen
                } label: {
                    Text("Skip")
                        .font(.system(size: 14))
                        .foregroundStyle(Color.primary)
                        .bold()
                        .padding(.horizontal)
                }
            }
            Spacer()
            
            Image("IMG1")
                .scaledToFit()
            Spacer()
            
            HStack {
                Text("Find")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                Spacer()
            }
            Spacer()
            
            Text("Lorem ipsum dolor sit amet, consectetur adip iscing elitaw. Vivamus nisl augue, blandit sed tempor quis, aliquetquis velas augue. Vivamus sollicitudin eleme ntum rutrum. Cras interdum consectetur blandit tempor nibh.")
                .padding(.horizontal)
                .foregroundStyle(Color.gray)
                .font(.system(size: 16))
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            HStack {
                Spacer()
                
                Circle()
                    .frame(width: 10, height: 10)
                    .padding(.vertical)
                    .foregroundStyle(Color.primary)
                
                Circle()
                    .frame(width: 10, height: 10)
                    .padding(.vertical)
                    .foregroundStyle(Color.secondary)
                
                Circle()
                    .frame(width: 10, height: 10)
                    .padding(.vertical)
                    .foregroundStyle(Color.secondary)
                
                Spacer()
            }
            Spacer()
            
            Button {
                //Move to next screen
            } label: {
                HStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 343, height: 48)
                            .cornerRadius(4)
                            .padding()
                            .foregroundStyle(Color.primary)
                        
                        Text("Next")
                            .font(.system(size: 14))
                            .foregroundStyle(colorScheme == .light ? Color.white : Color.black)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    welcomeOne()
}
