//
//  DoctorRow.swift
//  MedApp
//
//  Created by Владислав Волков on 17.11.2023.
//

import SwiftUI

struct DoctorRow: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image("NearDoctor")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Dr. Joseph Brostito")
                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                        .foregroundStyle(.textPrimary)
                    Text("Dental Specialist")
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(.textSecondary)
                }
                Spacer()
                HStack {
                    Image(systemName: "map")
                        .font(.body)
                        .foregroundStyle(.textSecondary)
                    Text("1.2 KM")
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(.textSecondary)
                }
            }
            
            Divider().overlay(.white.opacity(0.7))
            
            HStack(spacing: 16) {
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(.orange)
                    Text("Sunday, 12 June")
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(.orange)
                }
                
                
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(.accent)
                    Text("Sunday, 12 June")
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(.accent)
                }
                
                Spacer()
            }
            .padding(.top, 8)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 20)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04), radius: 10, x: 2, y: 8)
    }
}

#Preview {
    DoctorRow()
}
