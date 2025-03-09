//
//  ContentView.swift
//  Appetizer
//
//  Created by Alex on 8/3/25.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                    
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                    
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
