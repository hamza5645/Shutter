//
//  welcomeThree.swift
//  Shutter
//
//  Created by Hamza Osama on 16/07/2023.
//

import SwiftUI

struct welcomeThree: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isShowingAnotherView = false
    @State private var isShowingHome = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        Button {
                            isShowingHome = true
                        } label: {
                            Text("Skip")
                                .font(.system(size: 14))
                                .foregroundStyle(Color.primary)
                                .bold()
                                .padding(.horizontal)
                        }
                    }
                    Spacer()
                    
                    Image("IMG3")
                        .resizable()
                        .scaledToFit()
                    Spacer()
                    
                    HStack {
                        Text("Pay")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                        Spacer()
                    }
                    Spacer()
                    
                }
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
                        .foregroundStyle(Color.secondary)
                    
                    Circle()
                        .frame(width: 10, height: 10)
                        .padding(.vertical)
                        .foregroundStyle(Color.secondary)
                    
                    Circle()
                        .frame(width: 10, height: 10)
                        .padding(.vertical)
                        .foregroundStyle(Color.primary)
                    
                    Spacer()
                }
                Spacer()
                
                Button {
                    isShowingAnotherView = true
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
                .background(
                    NavigationLink (
                        destination: Home_page()
                            .navigationBarHidden(true),
                        isActive: $isShowingAnotherView,
                        label: { EmptyView() }
                    )
                )
                .background(
                    NavigationLink (
                        destination: Home_page()
                            .navigationBarHidden(true),
                        isActive: $isShowingHome,
                        label: { EmptyView() }
                    )
                )
                
            }
        }
    }
}

struct welcomeThree_Previews: PreviewProvider {
    static var previews: some View {
        welcomeThree()
    }
}
