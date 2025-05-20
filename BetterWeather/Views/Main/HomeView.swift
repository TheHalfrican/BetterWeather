//
//  HomeView.swift
//  BetterWeather
//
//  Created by Owner on 5/20/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // MARK: - Background Color
            Color.background
                .ignoresSafeArea()
            
            // MARK: - Background Image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: - House Image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            // MARK: - Current Weather
            VStack(spacing: -10) {
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack {
                    Text("19°")
                        .font(.system(size: 96, weight: .thin))
                        .foregroundColor(.primary)
                    +
                    Text("\n ")
                        
                    +
                    Text("Mostly Clear")
                        .font(.title3.weight(.semibold))
                        .foregroundColor(.secondary)
                    
                    Text("H:24°  L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
