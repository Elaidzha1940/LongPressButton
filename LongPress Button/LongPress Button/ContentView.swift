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
    
    @State var HPress = false
    @State var FB = false
    @GestureState var topG = false
    
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.1)
            
            ZStack {
                Circle()
                    .frame(width: 130, height: 130)
                    .foregroundColor(.gray.opacity(0.1))
                    .shadow(color: .black.opacity(0.1), radius: 10, x: 10, y: 10)
                    .shadow(color: .white.opacity(0.6), radius: 10, x: -20, y: -20)
                
                Circle()
                    .stroke(lineWidth: 7)
                    .frame(width: 130, height: 130)
                    .foregroundColor(Color.gray.opacity(0.1))
                
                Circle()
                    .stroke(lineWidth: 5.5)
                    .frame(width: 115, height: 115)
                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.06), Color.gray.opacity(0.01), Color.black.opacity(0.06)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                
                if topG {
                    Circle()
                        .stroke(lineWidth: 15)
                        .frame(width: 105, height: 105)
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.01), .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .blur(radius: 3)
                }
                ZStack {
                    Circle()
                        .frame(width: 90, height: 90)
                        .foregroundColor(.white)
                    Image("print")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 90)
                        .cornerRadius(50)
                }
                
            }
            .gesture(LongPressGesture().updating($topG) {cstate, gstate, transition in
                gstate = cstate
            }
                .onEnded({ value in
                    HPress.toggle()
                })
            )
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
