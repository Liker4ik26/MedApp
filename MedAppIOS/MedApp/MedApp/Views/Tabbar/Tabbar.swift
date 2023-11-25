//
//  Tabbar.swift
//  MedApp
//
//  Created by Liker4ik50 on 17.11.2023.
//

import SwiftUI

struct Tabbar: View {
    @State var selectedTab = "Home"
    
    let tabs = [
        ["name": "Home", "icon": "house"],
        ["name": "Calendar", "icon": "calendar"],
        ["name": "Chat", "icon": "message"],
        ["name": "Profile", "icon": "person"]
    ]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                Home()
                    .tag("Home")
                
                Text("Calendar")
                    .tag("Calendar")
                
                Text("Chat")
                    .tag("Chat")
                
                Text("Profile")
                    .tag("Profile")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabbarItem(tab: tab["icon"] ?? "", title: tab["name"] ?? "", selected: $selectedTab)
                    Spacer()
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 5)
            .padding(.horizontal, 24)
            .frame(maxWidth: .infinity)
            .background(Color("backgroundPrimary"))
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black.opacity(0.12)),
                alignment: .top
            )
        }
    }
}

struct  Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
