//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Alex on 8/3/25.
//

import SwiftUI

struct AppetizerListView: View {

    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCellView(appetizer: appetizer)
            }
            .navigationTitle(Text("Appetizers"))
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
