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
                
                ZStack {
                    Image("IMG4")
                        .frame(width: 343, height: 220)
                    
                    HStack {
                        //profile elements here
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    Home_page()
}
