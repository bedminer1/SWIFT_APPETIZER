//
//  AppetizerListCellView.swift
//  Appetizer
//
//  Created by Alex on 9/3/25.
//

import SwiftUI

struct AppetizerListCellView: View {
    var appetizer: Appetizer
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 4) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        .frame(width: .infinity, height: 100)
    }
}

#Preview {
    AppetizerListCellView(appetizer: MockData.sampleAppetizer)
}
