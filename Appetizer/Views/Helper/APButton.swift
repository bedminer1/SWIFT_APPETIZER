//
//  APButton.swift
//  Appetizer
//
//  Created by Alex on 9/3/25.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .frame(width: 260, height: 50)
            .padding(4)
            .background(Color("brandPrimary"))
            .foregroundColor(.white)
            .font(.title3)
            .cornerRadius(8)
    }
}

#Preview {
    APButton(title: "test title")
}
