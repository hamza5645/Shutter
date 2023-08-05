//
//  profile.swift
//  Shutter
//
//  Created by Hamza Osama on 20/07/2023.
//

import SwiftUI
import Firebase

struct profile: View {
    @State private var homeView = false
    @State private var sessionsView = false
    @State private var loginView = false
    @State private var signupView = false
    @AppStorage("uid") var userID: String = ""
    @State private var uid: String = ""
    @State private var email: String = ""
    @State private var displayName: String = ""
    
    var body: some View {
        ZStack {
            if userID == "" {
                loggedOut
            } else {
                content
            }
        }
    }
    
    var content: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Profile")
                        .font(.custom("Vollkorn-SemiBold", size: 32))
                        .padding(.horizontal, 30)
                        .fontWeight(.semibold)
                    Spacer()
                }
                Divider()
                
                Text("User ID: \(uid)")
                Text("Email: \(email)")
                Text("Display Name: \(displayName)")
                
                Spacer()
                
                //navBar
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
                        
                        Button {
                            sessionsView = true
                        } label: {
                            VStack {
                                Image("sessions")
                                    .frame(width: 24, height: 24)
                                
                                Text("Sessions")
                                    .font(.custom("Muli", size: 12))
                                    .foregroundColor(.black)
                            }
                        }
                        .background(
                            NavigationLink(
                                destination: sessions()
                                    .navigationBarHidden(true),
                                isActive: $sessionsView,
                                label: { EmptyView() }
                            )
                        )
                        
                        Spacer()
                        
                        VStack {
                            Image("profileBlack")
                                .frame(width: 24, height: 24)
                            
                            Text("Profile")
                                .font(.custom("Muli", size: 12))
                        }
                        
                        Spacer()
                    }
                }
                
            }
        }
        .onAppear(perform: loadUserData)
    }
    
    var loggedOut: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Profile")
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
                    
                    Button {
                        signupView = true
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 343, height: 48)
                                .cornerRadius(4)
                                .foregroundColor(.black)
                            
                            HStack {
                                Text("Create account")
                                    .foregroundColor(.white)
                                    .font(.custom("Muli-Bold", size: 14))
                            }
                        }
                    }
                    .background(
                        NavigationLink (
                            destination: signUp()
                                .navigationBarHidden(true),
                            isActive: $signupView,
                            label: { EmptyView() }
                        )
                    )
                    
                    Button {
                        loginView = true
                    } label: {
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
                    .background(
                        NavigationLink (
                            destination: logIn()
                                .navigationBarHidden(true),
                            isActive: $loginView,
                            label: { EmptyView() }
                        )
                    )
                }
                .padding()
                
                //NavBar
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
                        
                        Button {
                            sessionsView = true
                        } label: {
                            VStack {
                                Image("sessions")
                                    .frame(width: 24, height: 24)
                                
                                Text("Sessions")
                                    .font(.custom("Muli", size: 12))
                                    .foregroundColor(.black)
                            }
                        }
                        .background(
                            NavigationLink(
                                destination: sessions()
                                    .navigationBarHidden(true),
                                isActive: $sessionsView,
                                label: { EmptyView() }
                            )
                        )
                        
                        Spacer()
                        
                        VStack {
                            Image("profileBlack")
                                .frame(width: 24, height: 24)
                            
                            Text("Profile")
                                .font(.custom("Muli", size: 12))
                        }
                        
                        Spacer()
                    }
                }
            }
        }
    }
    
    func loadUserData() {
        let user = Auth.auth().currentUser
        if let user = user {
            self.uid = user.uid
            self.email = user.email ?? "No Email"
            self.displayName = user.displayName ?? "No Display Name"
        }
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
