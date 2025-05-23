//
//  TabBar.swift
//  BetterWeather
//
//  Created by Owner on 5/20/25.
//

import SwiftUI

struct TabBar: View {
    
    var action: () -> Void
    var body: some View {
        ZStack {
            // MARK: - Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    // MARK: - Arc Border
                    Arc()
                        .stroke(.tabBarBorder, lineWidth: 0.5)
                }
            
            // MARK: - Tab Items
            HStack {
                // MARK: - Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                // MARK: - Navigation Button
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
            .font(.title2)
            .foregroundColor(.white)
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

#Preview {
    TabBar(action: {} )
        .preferredColorScheme(.dark)
}
