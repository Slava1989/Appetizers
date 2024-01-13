//
//  APButton.swift
//  Appetizers
//
//  Created by Slava Chirita on 12.01.2024.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    APButton(title: "Test")
}
