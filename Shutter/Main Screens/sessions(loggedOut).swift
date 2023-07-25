//
//  sessions(loggedOut).swift
//  Shutter
//
//  Created by Hamza Osama on 24/07/2023.
//

import SwiftUI

struct sessions_loggedOut_: View {
    @State private var homeView = false
    @State private var profileView = false
    
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Photographers")
                        .font(.custom("Vollkorn-SemiBold", size: 32))
                        .padding(.horizontal, 30)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                Divider()
                
                
                
                Spacer()
                
                VStack {
                    Text("You have to create account login first")
                        .font(.custom("Muli", size: 16))
                        .foregroundColor(.secondary)
                        .padding()
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 343, height: 48)
                            .cornerRadius(4)
                        
                        HStack {
                            Text("Create account")
                                .foregroundColor(.white)
                                .font(.custom("Muli-Bold", size: 14))
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 343, height: 48)
                            .cornerRadius(4)
                            .foregroundColor(.secondary)
                        
                        HStack {
                            Text("Login")
                                .foregroundColor(.black)
                                .font(.custom("Muli-Bold", size: 14))
                        }
                    }
                }
                .padding()
                
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

struct sessions_loggedOut__Previews: PreviewProvider {
    static var previews: some View {
        sessions_loggedOut_()
    }
}
