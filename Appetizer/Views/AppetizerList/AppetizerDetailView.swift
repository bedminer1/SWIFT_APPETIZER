//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by Alex on 9/3/25.
//

import SwiftUI

struct AppetizerDetailView: View {
    var appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {

        VStack  {
            VStack(spacing: 15) {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 250)
                
                Text(appetizer.name)
                    .font(.title2)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 35) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .italic()
                            .fontWeight(.semibold)
                    }
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.carbs) g")
                            .foregroundColor(.secondary)
                            .italic()
                            .fontWeight(.semibold)
                    }
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.protein) g")
                            .foregroundColor(.secondary)
                            .italic()
                            .fontWeight(.semibold)
                    }
                }
                
                Spacer()
                    .frame(height: 2)
                
                Button {
                    isShowingDetail = false
                } label: {
                    Text("$\(appetizer.price, specifier: "%.2f") - Add to Cart")
                        .frame(width: 260, height: 50)
                        .padding(4)
                        .background(Color("brandPrimary"))
                        .foregroundColor(.white)
                        .font(.title3)
                        .cornerRadius(8)
                }
                .padding(.bottom, 30)
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(true))
}
