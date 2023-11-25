//
//  DoctorRow.swift
//  MedApp
//
//  Created by Liker4ik50 on 17.11.2023.
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
                    Text(NSLocalizedString("doctor_name", comment: ""))
                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                        .foregroundStyle(Color("textPrimary"))
                    Text(NSLocalizedString("doctor_prof", comment: ""))
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(Color("textSecondary"))
                }
                Spacer()
                HStack {
                    Image(systemName: "map")
                        .font(.body)
                        .foregroundStyle(Color("textSecondary"))
                    Text(NSLocalizedString("doctor_km", comment: ""))
                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                        .foregroundStyle(Color("textSecondary"))
                }
            }
            
            Divider().overlay(.white.opacity(0.7))
            
            HStack(spacing: 16) {
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(.orange)
                    Text(NSLocalizedString("doctor_date", comment: ""))
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(.orange)
                }
                
                
                HStack {
                    Image(systemName: "clock")
                        .font(.body)
                        .foregroundStyle(Color("AccentColor"))
                    Text(NSLocalizedString("doctor_date", comment: ""))
                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                        .foregroundStyle(Color("AccentColor"))
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

struct   DoctorRow_Previews: PreviewProvider {
    static var previews: some View {
        DoctorRow()
    }
}
