//
//  logIn.swift
//  Shutter
//
//  Created by Hamza Osama on 23/07/2023.
//

import SwiftUI
import Firebase

struct logIn: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isShowingAnotherView = false
    @AppStorage("uid") var userID: String = ""
    @State private var homeView = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "multiply")
                                .frame(width: 16, height: 16)
                                .padding()
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Text("Login")
                            .font(.custom("Vollkorn-SemiBold", size: 18))
                            .padding(.trailing, 170)
                    }
                    
                    Divider()
                    
                    Text("Welcome back")
                        .font(.custom("Vollkorn-SemiBold", size: 24))
                    
                    Text("Miss you!")
                        .font(.custom("Muli-SemiBold", size: 16))
                        .foregroundColor(.secondary)
                    
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
                                .autocapitalization(.none)
                            
                            Spacer()
                        }
                    }
                    .frame(width: 343, height: 48)
                    
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
                        login()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width: 343, height: 48)
                                .cornerRadius(4)
                                .padding()
                                .foregroundColor(.black)
                            
                            Text("Login")
                                .foregroundColor(.white)
                                .font(.custom("Muli-Bold", size: 14))
                        }
                    }
                }
                
                VStack {
                    ZStack {
                        Divider()
                        Text("OR")
                            .foregroundColor(.secondary)
                            .font(.custom("Muli-SemiBold", size: 14))
                    }
                    .padding()
                    
                    Button {
                        //Log in with Google
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.secondary, lineWidth: 1)
                                .frame(width: 343, height: 48)
                            
                            HStack {
                                Image("google")
                                
                                Text("Login with Google")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        //forget password
                    } label: {
                        Text("Forget password?")
                            .font(.custom("Muli-SemiBold", size: 14))
                            .foregroundColor(.black)
                            .underline()
                    }
                    
                    
                    HStack {
                        Text("Don’t have an account?")
                            .font(.custom("Muli-SemiBold", size: 14))
                            .foregroundColor(.secondary)
                        
                        Button {
                            isShowingAnotherView = true
                        } label: {
                            Text("Create one")
                                .font(.custom("Muli-SemiBold", size: 14))
                                .foregroundColor(.black)
                                .underline()
                        }
                    }
                    .padding(10)
                }
                
                Spacer()
            }
            .background(
                NavigationLink (
                    destination: signUp()
                        .navigationBarHidden(true),
                    isActive: $isShowingAnotherView,
                    label: { EmptyView() }
                )
            )
        }
    }
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error)
                return
            }
            
            if let authResult = authResult {
                print(authResult.user.uid)
                
                withAnimation {
                    userID = authResult.user.uid
                }
            }
        }
    }
    
}

struct logIn_Previews: PreviewProvider {
    static var previews: some View {
        logIn()
    }
}
