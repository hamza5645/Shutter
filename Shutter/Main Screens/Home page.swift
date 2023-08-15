//
//  Home page.swift
//  Shutter
//
//  Created by Hamza Osama on 16/07/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image("magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }
                        }
                    }
                )
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct Home_page: View {
    @State private var sessionsView = false
    @State private var profileView = false
    @State private var searchText = ""
    
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
                
                SearchBar(text: $searchText)
                
                Divider()
                
                ScrollView {
                    VStack {
                        ForEach(getFilteredData().indices, id: \.self) { index in
                            getFilteredData()[index]
                        }
                    }
                }
                
            }
        }
    }
    
    func getFilteredData() -> [AnyView] {
        let data = [
            ("Mohamed Nady", "IMG4"),
            ("Hamza Abdelrahman", "IMG5"),
            ("Salman Abdelrahman", "IMG6"),
            // ... (add other data as needed in the format (name, image))
        ]
        
        return data.filter {
            $0.0.contains(searchText) || searchText.isEmpty
        }.map {
            AnyView(createZStack(name: $0.0, image: $0.1))
        }
    }
    
    func createZStack(name: String, image: String) -> some View {
        return ZStack {
            Image(image)
            VStack {
                Spacer()
                HStack {
                    Image("profile_pic")
                        Text(name)
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
    }
}

struct Home_page_Previews: PreviewProvider {
    static var previews: some View {
        Home_page()
    }
}
