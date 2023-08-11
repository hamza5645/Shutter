//
//  Home page.swift
//  Shutter
//
//  Created by Hamza Osama on 16/07/2023.
//

import SwiftUI

struct Home_page: View {
    @State private var sessionsView = false
    @State private var profileView = false
    
    var body: some View {
        NavigationView {
            VStack() {
                HStack {
                    Text("Photographers")
                        .font(.custom("Vollkorn-SemiBold", size: 32))
                        .padding(.horizontal, 30)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
//                HStack {
//                    ZStack {
//                        Rectangle()
//                            .frame(width: 287, height: 40)
//                            .cornerRadius(4)
//                            .foregroundColor(Color("F5F5F5"))
//                        
//                        HStack {
//                            Image("search")
//                                .padding(.vertical)
//                            Text("Type name or #hashtag")
//                                .foregroundColor(Color("BBBBBB"))
//                        }
//                    }
//                    
//                    
//                    ZStack {
//                        Rectangle()
//                            .frame(width: 40, height: 40)
//                            .foregroundColor(Color("F5F5F5"))
//                            .cornerRadius(4)
//                        Image("filter")
//                    }
//                }
                
                Divider()
                
                ScrollView {
                    VStack {
                        ZStack {
                            Image("IMG4")
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Image("profile_pic")
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-Bold", size: 16))
                                        .foregroundColor(.white)
                                    Text("(4.5)")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.yellow)
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        .frame(width: 343, height: 220)
                        
                        ZStack {
                            Image("IMG5")
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Image("profile_pic")
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-Bold", size: 16))
                                        .foregroundColor(.white)
                                    Text("(4.5)")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.yellow)
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        .frame(width: 343, height: 220)
                        
                        ZStack {
                            Image("IMG4")
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Image("profile_pic")
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-Bold", size: 16))
                                        .foregroundColor(.white)
                                    Text("(4.5)")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.yellow)
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        .frame(width: 343, height: 220)
                        
                        ZStack {
                            Image("IMG5")
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Image("profile_pic")
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-Bold", size: 16))
                                        .foregroundColor(.white)
                                    Text("(4.5)")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.yellow)
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        .frame(width: 343, height: 220)
                        
                        ZStack {
                            Image("IMG4")
                            
                            VStack {
                                Spacer()
                                HStack {
                                    Image("profile_pic")
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-Bold", size: 16))
                                        .foregroundColor(.white)
                                    Text("(4.5)")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.yellow)
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        .frame(width: 343, height: 220)
                        
                        Spacer()
                    }
                }
                
                //nav bar
                
                ZStack {
                    Rectangle()
                        .frame(width: 375, height: 50)
                        .foregroundColor(.white)
                        .blur(radius: 20)
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image("homeBlack")
                                .frame(width: 24, height: 24)
                            
                            Text("Home")
                                .font(.custom("Muli", size: 12))
                        }
                        
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

struct Home_page_Previews: PreviewProvider {
    static var previews: some View {
        Home_page()
    }
}
