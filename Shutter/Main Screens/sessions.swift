//
//  sessions.swift
//  Shutter
//
//  Created by Hamza Osama on 20/07/2023.
//

import SwiftUI

struct sessions: View {
    @State private var homeView = false
    @State private var profileView = false
    @State private var loginView = false
    @State private var signupView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Empty")
                
                Spacer()
                //Nav Bar
                ZStack {
                    Rectangle()
                        .frame(width: 375, height: 50)
                        .foregroundColor(.white)
                        .blur(radius: 20)
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            homeView = true
                        } label: {
                            VStack {
                                Image("home")
                                    .frame(width: 24, height: 24)
                                
                                Text("Home")
                                    .font(.custom("Muli", size: 12))
                                    .foregroundColor(.black)
                            }
                        }
                        .background(
                            NavigationLink(
                                destination: Home_page()
                                    .navigationBarHidden(true),
                                isActive: $homeView,
                                label: { EmptyView() }
                            )
                        )
                        
                        Spacer()
                        
                        
                        VStack {
                            Image("sessionsBlack")
                                .frame(width: 24, height: 24)
                            
                            Text("Sessions")
                                .font(.custom("Muli", size: 12))
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Button {
                            profileView = true
                        } label: {
                            VStack {
                                Image("profile")
                                    .frame(width: 24, height: 24)
                                
                                Text("Profile")
                                    .font(.custom("Muli", size: 12))
                                    .foregroundColor(.black)
                                
                                
                            }
                            .background(
                                NavigationLink(
                                    destination: profile()
                                        .navigationBarHidden(true),
                                    isActive: $profileView,
                                    label: { EmptyView() }
                                )
                            )
                        }
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

struct sessions_Previews: PreviewProvider {
    static var previews: some View {
        sessions()
    }
}
