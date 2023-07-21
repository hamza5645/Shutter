//
//  Home page.swift
//  Shutter
//
//  Created by Hamza Osama on 16/07/2023.
//

import SwiftUI

struct Home_page: View {
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
                
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 287, height: 40)
                            .cornerRadius(4)
                            .foregroundColor(.F_5_F_5_F_5)
                        
                        HStack {
                            Image("search")
                                .padding(.vertical)
                            Text("Type name or #hashtag")
                                .foregroundColor(.BBBBBB)
                        }
                    }
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.F_5_F_5_F_5)
                            .cornerRadius(4)
                        Image("filter")
                    }
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
                
                ZStack {
                    HStack {
                        Rectangle()
                            .frame(width: 375, height: 84)
                            .foregroundColor(.white)
                            .blur(radius: 20)
                        
                        Image("home")
                            .frame(width: 24, height: 24)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    Home_page()
}
