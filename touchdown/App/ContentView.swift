//
//  ContentView.swift
//  touchdown
//
//  Created by Sandesh Naik on 02/03/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.safeAreaInsets) private var safeAreaInsets

    //MARK: - <##>
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding()
                    .background(.colorBackground)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    .padding(.top, safeAreaInsets.top)
                
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
