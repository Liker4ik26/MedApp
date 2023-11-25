//
//  DoctorListView.swift
//  MedApp
//
//  Created by Liker4ik50 on 16.11.2023.
//

import SwiftUI

struct Home: View {
    @State private var text: String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
     
                    HStack {
                        VStack(alignment: .leading) {
                            Text(NSLocalizedString("hi", comment: ""))
                                .font(.custom(FontsManager.Poppins.regular, size: 16))
                                .foregroundStyle(Color("textSecondary"))
                            Text(NSLocalizedString("hi_user", comment: ""))
                                .font(.custom(FontsManager.Poppins.bold, size: 20))
                                .foregroundStyle(Color("textPrimary"))
                                .bold()
                        }
                        
                        Spacer()
                        
                        Image("UserAvatar")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 56, height: 56)
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)

                    NavigationLink(destination: DoctorDetailView()) {
                        VStack {
                            HStack(spacing: 12) {
                                Image("DoctorImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 60, height: 60)
                                    .background(.white)
                                    .clipShape(Circle())
                                VStack(alignment: .leading) {
                                    Text(NSLocalizedString("doctor_name", comment: ""))
                                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                                        .foregroundStyle(Color("onPrimary"))
                                    Text(NSLocalizedString("doctor_general", comment: ""))
                                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                                        .foregroundStyle(Color("onPrimary"))
                                        .opacity(0.7)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(Color("onPrimary"))
                            }
                            
                            Divider()
                                .overlay(.white.opacity(0.7))
                            
                            
                            HStack {
                                HStack {
                                    Image(systemName: "calendar")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text(NSLocalizedString("doctor_date", comment: ""))
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(Color("onPrimary"))
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Image(systemName: "clock")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text(NSLocalizedString("doctor_date", comment: ""))
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(Color("onPrimary"))
                                }
                            }
                            .padding(.top, 8)
                        }
                        .padding(20)
                        .background(Color("AccentColor"))
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 24)

                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color("textSecondary"))
                        TextField("", text: $text, prompt: Text(NSLocalizedString("search", comment: "")).foregroundColor(Color("textSecondary")))
                            .foregroundStyle(Color("textPrimary"))
                            .font(.custom(FontsManager.Poppins.regular, size: 16))
                    }
                    .padding(16)
                    .background(Color("backgroundSecondary"))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                    .padding(.bottom, 24)
        
                    HStack {
                        CategoryView(categoryName: NSLocalizedString("viros", comment: ""), iconName: "Covid")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("doc", comment: ""), iconName: "Doctor")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("med", comment: ""), iconName: "Medicine")
                        Spacer()
                        CategoryView(categoryName: NSLocalizedString("hospital", comment: ""), iconName: "Hospital")
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)

                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text( NSLocalizedString("near_doctor", comment: ""))
                            .font(.custom(FontsManager.Poppins.semibold, size: 16))
                        DoctorRow()
                        DoctorRow()
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 80)
                    
                    Spacer()
                }
                .navigationBarHidden(true)
            }
        }
        .background(Color("backgroundPrimary").ignoresSafeArea(.all))
    }
}


struct  Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
