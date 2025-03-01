//
//  FooterView.swift
//  touchdown
//
//  Created by Sandesh Naik on 02/03/25.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight  and durable football helments in hte marke at affordable price.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
                
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright © 2025 Touchdown.\nAll rights reserved.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
        .background(.colorBackground)
}
