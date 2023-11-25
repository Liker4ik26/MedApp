//
//  CatergoryView.swift
//  MedApp
//
//  Created by Liker4ik50 on 17.11.2023.
//

import SwiftUI

struct CategoryView: View {
    var categoryName: String
    var iconName: String
    
    var body: some View {
        VStack(spacing: 12) {
            VStack(alignment: .center) {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 28)
            }
            .frame(width: 72, height: 72)
            .background(Color("backgroundSecondary"))
            .clipShape(Circle())
            
            Text(categoryName)
                .font(.custom(FontsManager.Poppins.regular, size: 15))
                .foregroundStyle(Color("textSecondary"))
        }
    }
}
