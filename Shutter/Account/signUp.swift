//
//  signUp.swift
//  Shutter
//
//  Created by Hamza Osama on 23/07/2023.
//

import SwiftUI
import Firebase

struct signUp: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var password = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isShowingAnotherView = false
    @State private var userIsLoggedIn = false
    @AppStorage("uid") var userID: String = ""
    @State private var homeView = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Button {
                            homeView = true
                        } label: {
                            Image(systemName: "multiply")
                                .frame(width: 16, height: 16)
                                .padding()
                                .foregroundColor(.black)
                        }
                        .background(
                            NavigationLink(
                                destination: customTabBar()
                                    .navigationBarHidden(true),
                                isActive: $homeView,
                                label: { EmptyView() }
                            )
                        )
                        
                        Spacer()
                        
                        Text("Create account")
                            .font(.custom("Vollkorn-SemiBold", size: 18))
                            .padding(.trailing, 120)
                    }
                    .padding()
                    
                    Divider()
                    
                    Text("Join our network")
                        .font(.custom("Vollkorn-SemiBold", size: 24))
                    
                    Text("Join to hire professional photographers")
                        .font(.custom("Muli-SemiBold", size: 16))
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Text("Name")
                            .font(.custom("Muli", size: 14))
                            .foregroundColor(.secondary)
                            .padding([.top, .leading, .trailing], 25)
                        Spacer()
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.secondary, lineWidth: 1)
                            .frame(width: 343, height: 48)
                        
                        HStack {
                            TextField("Enter your full name here", text: $name)
                                .font(.custom("Muli-SemiBold", size: 16))
                                .foregroundColor(Color("BBBBBB"))
                                .padding(.horizontal)
                            
                            Spacer()
                        }
                    }
                    .frame(width: 343, height: 48)
                    
                    HStack {
                        Text("Email")
                            .font(.custom("Muli", size: 14))
                            .foregroundColor(.secondary)
                            .padding([.top, .leading, .trailing], 25)
                        Spacer()
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.secondary, lineWidth: 1)
                            .frame(width: 343, height: 48)
                        
                        HStack {
                            TextField("Enter your email here", text: $email)
                                .font(.custom("Muli-SemiBold", size: 16))
                                .foregroundColor(Color("BBBBBB"))
                                .padding(.horizontal)
                            
                            Spacer()
                        }
                    }
                    .frame(width: 343, height: 48)
                }
                
                VStack {
                    //                    HStack {
                    //                        Text("Phone number")
                    //                            .font(.custom("Muli", size: 14))
                    //                            .foregroundColor(.secondary)
                    //                            .padding([.top, .leading, .trailing], 25)
                    //                        Spacer()
                    //                    }
                    
                    //                    ZStack {
                    //                        RoundedRectangle(cornerRadius: 4)
                    //                            .stroke(Color.secondary, lineWidth: 1)
                    //                            .frame(width: 343, height: 48)
                    //
                    //                        HStack {
                    //                            TextField("+ - - -  - - - -  - - - -", text: $phone)
                    //                                .keyboardType(.numberPad)
                    //                                .font(.custom("Muli-SemiBold", size: 16))
                    //                                .foregroundColor(Color("BBBBBB"))
                    //                                .padding(.horizontal)
                    //
                    //                            Spacer()
                    //                        }
                    //                    }
                    //                    .frame(width: 343, height: 48)
                    
                    HStack {
                        Text("Password")
                            .font(.custom("Muli", size: 14))
                            .foregroundColor(.secondary)
                            .padding([.top, .leading, .trailing], 25)
                        Spacer()
                    }
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.secondary, lineWidth: 1)
                            .frame(width: 343, height: 48)
                        
                        HStack {
                            if isPasswordVisible {
                                TextField("Enter your password here", text: $password)
                                    .font(.custom("Muli-SemiBold", size: 16))
                                    .foregroundColor(Color("BBBBBB"))
                                    .padding(.horizontal)
                            } else {
                                SecureField("Enter your password here", text: $password)
                                    .font(.custom("Muli-SemiBold", size: 16))
                                    .foregroundColor(Color("BBBBBB"))
                                    .padding(.horizontal)
                            }
                            
                            Button {
                                isPasswordVisible.toggle()
                            } label: {
                                Text("Show")
                                    .foregroundColor(.black)
                                    .font(.custom("Muli-Bold", size: 12))
                                    .padding(16)
                            }
                            
                            Spacer()
                        }
                    }
                    .frame(width: 343, height: 48)
                    
                    Button {
                        register()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 343, height: 48)
                                .foregroundColor(.black)
                                .cornerRadius(4)
                            
                            HStack {
                                Text("Create account")
                                    .foregroundColor(.white)
                                    .font(.custom("Muli-Bold", size: 14))
                            }
                        }
                    }
                    
                }
                ZStack {
                    Divider()
                    Text("OR")
                        .foregroundColor(.secondary)
                        .font(.custom("Muli-SemiBold", size: 14))
                }
                .padding()
                
                Button {
                    //Sign up with Google
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(Color.secondary, lineWidth: 1)
                            .frame(width: 343, height: 48)
                        
                        HStack {
                            Image("google")
                            
                            Text("Create account with Google")
                                .foregroundColor(.black)
                        }
                    }
                }
                
                Text("By creating an account, you agree to the terms and privacy policy")
                    .font(.custom("Muli-SemiBold", size: 14))
                    .foregroundColor(.secondary)
                    .padding()
                
                HStack {
                    Text("Already have an account?")
                        .font(.custom("Muli-SemiBold", size: 14))
                        .foregroundColor(.secondary)
                    
                    Button {
                        isShowingAnotherView = true
                    } label: {
                        Text("Login")
                            .font(.custom("Muli-SemiBold", size: 14))
                            .foregroundColor(.black)
                            .underline()
                    }
                }
                
                Spacer()
            }
            .background(
                NavigationLink (
                    destination: logIn()
                        .navigationBarHidden(true),
                    isActive: $isShowingAnotherView,
                    label: { EmptyView() }
                )
            )
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        userIsLoggedIn.toggle()
                    }
                }
            }
        }
    }
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                print(error)
                return
            }
            
            if let authResult = authResult {
                print(authResult.user.uid)
                
                let changeRequest = authResult.user.createProfileChangeRequest()
                changeRequest.displayName = name
                changeRequest.commitChanges { error in
                    if let error = error {
                        print("Failed to update user profile: \(error)")
                        return
                    }
                }
                
                withAnimation {
                    userID = authResult.user.uid
                }
            }
        }
    }
    
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}
