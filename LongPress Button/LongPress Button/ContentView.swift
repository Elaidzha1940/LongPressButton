//  /*
//
//  Project: LongPress Button
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date:
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.2)
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(.white.opacity(0.6))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 10, y: 10)
                .shadow(color: .white.opacity(0.3), radius: 10, x: -20, y: -20)
            Circle()
                .frame(width: 120, height: 120)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.06), Color.gray.opacity(0.01), Color.black.opacity(0.06)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
