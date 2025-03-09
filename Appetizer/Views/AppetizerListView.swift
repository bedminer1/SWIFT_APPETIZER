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
        ZStack {
            
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
                }
                .navigationTitle(Text("Appetizers"))
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
