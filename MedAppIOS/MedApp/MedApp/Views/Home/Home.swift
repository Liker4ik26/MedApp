//
//  DoctorListView.swift
//  MedApp
//
//  Created by Владислав Волков on 16.11.2023.
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
                            Text("Hello,")
                                .font(.custom(FontsManager.Poppins.regular, size: 16))
                                .foregroundStyle(.textSecondary)
                            Text("Hi James")
                                .font(.custom(FontsManager.Poppins.bold, size: 20))
                                .foregroundStyle(.textPrimary)
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
                                    Text("Dr. Imran Syahir")
                                        .font(.custom(FontsManager.Poppins.bold, size: 16))
                                        .foregroundStyle(.onPrimary)
                                    Text("General Doctor")
                                        .font(.custom(FontsManager.Poppins.regular, size: 14))
                                        .foregroundStyle(.onPrimary)
                                        .opacity(0.7)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.onPrimary)
                            }
                            
                            Divider()
                                .overlay(.white.opacity(0.7))
                            
                            
                            HStack {
                                HStack {
                                    Image(systemName: "calendar")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text("Sunday, 12 June")
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(.onPrimary)
                                }
                                
                                Spacer()
                                
                                HStack {
                                    Image(systemName: "clock")
                                        .font(.body)
                                        .foregroundStyle(.white)
                                    Text("Sunday, 12 June")
                                        .font(.custom(FontsManager.Poppins.regular, size: 12))
                                        .foregroundStyle(.onPrimary)
                                }
                            }
                            .padding(.top, 8)
                        }
                        .padding(20)
                        .background(.accent)
                        .cornerRadius(12)
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal, 24)

                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.textSecondary)
                        TextField("", text: $text, prompt: Text("Search doctor or health issue").foregroundColor(.textSecondary))
                            .foregroundStyle(.textPrimary)
                            .font(.custom(FontsManager.Poppins.regular, size: 16))
                    }
                    .padding(16)
                    .background(.backgroundSecondary)
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .padding(.top, 20)
                    .padding(.bottom, 24)
        
                    HStack {
                        CategoryView(categoryName: "Covid 19", iconName: "Covid")
                        Spacer()
                        CategoryView(categoryName: "Doctor", iconName: "Doctor")
                        Spacer()
                        CategoryView(categoryName: "Medicine", iconName: "Medicine")
                        Spacer()
                        CategoryView(categoryName: "Hospital", iconName: "Hospital")
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 32)

                    
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Near Doctor")
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


#Preview {
    Home()
}
