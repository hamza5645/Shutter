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
                        .padding(.bottom, 16)
                        
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
                        .padding(.bottom, 16)
                        
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
                        .padding(.bottom, 16)
                        
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
                        .padding(.bottom, 16)
                        
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
                        .padding(.bottom, 16)
                        
                        Spacer()
                        
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
