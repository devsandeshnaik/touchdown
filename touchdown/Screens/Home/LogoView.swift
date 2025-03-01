//
//  LogoView.swift
//  touchdown
//
//  Created by Sandesh Naik on 02/03/25.
//

import SwiftUI

struct LogoView: View {
    @State private var animate = false
    
    var body: some View {
        HStack(spacing: 4) {
            Text("touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 30, height: 30, alignment: .center)
            
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
        .opacity(animate ? 1 : 0)
        .offset(x: 0, y: animate ? 0 : -25)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                animate.toggle()
            }
        }
        .onDisappear {
            withAnimation(.easeOut(duration: 0.5)) {
                animate.toggle()
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
