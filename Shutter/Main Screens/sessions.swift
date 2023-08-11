//
//  sessions.swift
//  Shutter
//
//  Created by Hamza Osama on 20/07/2023.
//

import SwiftUI
import Firebase

struct sessions: View {
    @State private var homeView = false
    @State private var profileView = false
    @State private var loginView = false
    @State private var signupView = false
    @AppStorage("uid") var userID: String = ""
    
    var body: some View {
        ZStack {
            if userID == "" {
                content
            } else {
                loggedOut
            }
        }
    }
    
    var content: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text("Sessions")
                            .font(.custom("Vollkorn-SemiBold", size: 32))
                            .padding(.horizontal, 30)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    
                    Divider()
                }
                Spacer()
                
                ScrollView {
                    ZStack {
                        Rectangle()
                            .frame(width: 375, height: 176)
                            .foregroundColor(.white)
                        
                        VStack {
                            HStack {
                                HStack {
                                    Image("sessions_pic")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-SemiBold", size: 16))
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 70, height: 40)
                                            .foregroundColor(Color("E8F5E2"))
                                        
                                        Text("Active")
                                            .foregroundColor(.green)
                                            .font(.custom("Muli-Bold", size: 12))
                                    }
                                    
                                    Spacer()
                                }
                            }
                            .padding(0)
                            
                            VStack {
                                HStack {
                                    HStack {
                                        Image("calender")
                                            .frame(width: 24, height: 24)
                                        
                                        Text("14 / 1 / 2020")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image("clock")
                                        
                                        Text("4 PM - 10 PM")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("location")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Abdullah As Salem street, Kuwait")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("money")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("200 KWD")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                Spacer()
                            }
                        }
                    }
                    .frame(width: 375, height: 176)
                    .padding(16)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 375, height: 176)
                            .foregroundColor(.white)
                        
                        VStack {
                            HStack {
                                HStack {
                                    Image("sessions_pic")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-SemiBold", size: 16))
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 70, height: 40)
                                            .foregroundColor(Color("EEEEEE"))
                                        
                                        Text("Active")
                                            .foregroundColor(.black)
                                            .font(.custom("Muli-Bold", size: 12))
                                    }
                                    
                                    Spacer()
                                }
                            }
                            .padding(0)
                            
                            VStack {
                                HStack {
                                    HStack {
                                        Image("calender")
                                            .frame(width: 24, height: 24)
                                        
                                        Text("14 / 1 / 2020")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image("clock")
                                        
                                        Text("4 PM - 10 PM")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("location")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Abdullah As Salem street, Kuwait")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("money")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("200 KWD")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                Spacer()
                            }
                        }
                    }
                    .frame(width: 375, height: 176)
                    .padding(16)
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 375, height: 176)
                            .foregroundColor(.white)
                        
                        VStack {
                            HStack {
                                HStack {
                                    Image("sessions_pic")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-SemiBold", size: 16))
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 70, height: 40)
                                            .foregroundColor(Color("FDE3DE"))
                                        
                                        Text("Cancelled")
                                            .foregroundColor(.red)
                                            .font(.custom("Muli-Bold", size: 12))
                                    }
                                    
                                    Spacer()
                                }
                            }
                            .padding(0)
                            
                            VStack {
                                HStack {
                                    HStack {
                                        Image("calender")
                                            .frame(width: 24, height: 24)
                                        
                                        Text("14 / 1 / 2020")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image("clock")
                                        
                                        Text("4 PM - 10 PM")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("location")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Abdullah As Salem street, Kuwait")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("money")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("200 KWD")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                Spacer()
                            }
                        }
                    }
                    .frame(width: 375, height: 176)
                    .padding(16)
                    
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 375, height: 176)
                            .foregroundColor(.white)
                        
                        VStack {
                            HStack {
                                HStack {
                                    Image("sessions_pic")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Mohamed Nady")
                                        .font(.custom("Muli-SemiBold", size: 16))
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 70, height: 40)
                                            .foregroundColor(Color("FDE3DE"))
                                        
                                        Text("Cancelled")
                                            .foregroundColor(.red)
                                            .font(.custom("Muli-Bold", size: 12))
                                    }
                                    
                                    Spacer()
                                }
                            }
                            .padding(0)
                            
                            VStack {
                                HStack {
                                    HStack {
                                        Image("calender")
                                            .frame(width: 24, height: 24)
                                        
                                        Text("14 / 1 / 2020")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Image("clock")
                                        
                                        Text("4 PM - 10 PM")
                                            .font(.custom("Muli", size: 16))
                                            .foregroundColor(.secondary)
                                        
                                        Spacer()
                                    }
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("location")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("Abdullah As Salem street, Kuwait")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                HStack {
                                    Image("money")
                                        .frame(width: 24, height: 24)
                                    
                                    Text("200 KWD")
                                        .font(.custom("Muli", size: 16))
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 16)
                                
                                Spacer()
                            }
                        }
                    }
                    .frame(width: 375, height: 176)
                    .padding(16)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color("F5F5F5"))
                
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
    
    var loggedOut: some View {
        NavigationView {
            VStack{
                HStack {
                    Text("Sessions")
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
