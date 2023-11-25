//
//  TabBarItem.swift
//  MedApp
//
//  Created by Liker4ik50 on 17.11.2023.
//

import SwiftUI

struct TabbarItem: View {
    @State var tab: String
    @State var title: String
    @Binding var selected: String
    var body: some View {
        ZStack {
            Button {
                withAnimation(.spring()) {
                    selected = title
                }
            } label: {
                HStack {
                    Image(systemName: tab)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color("AccentColor"))
                    if selected == title {
                        Text(title)
                            .font(.custom(FontsManager.Poppins.regular, size: 15))
                    }
                }
            }
            
        }
        .opacity(selected == title ? 1 : 0.5)
        .padding(.vertical, 10)
        .padding(.horizontal, 12)
        .background(selected == title ? Color("tabActiveBackground").opacity(0.12) : Color("backgroundPrimary"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
