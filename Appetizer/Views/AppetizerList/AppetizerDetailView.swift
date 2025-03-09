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
                    NutritionFactsView(nutritionType: "Calories", nutritionValue: "\(appetizer.calories) g")
                    NutritionFactsView(nutritionType: "Carbs", nutritionValue: "\(appetizer.carbs) g")
                    NutritionFactsView(nutritionType: "Protein", nutritionValue: "\(appetizer.protein) g")
                }
                
                Spacer()
                    .frame(height: 2)
                
                Button {
                    isShowingDetail = false
                } label: {
                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Cart")
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
            DismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(true))
}

struct NutritionFactsView: View {
    var nutritionType: String
    var nutritionValue: String
    var body: some View {
        VStack(spacing: 5) {
            Text(nutritionType)
                .bold()
                .font(.caption)
            Text(nutritionValue)
                .foregroundColor(.secondary)
                .italic()
                .fontWeight(.semibold)
        }
    }
}
