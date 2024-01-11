//
//  ContentView.swift
//  Appetizers
//
//  Created by Slava Chirita on 05.01.2024.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizersListView()
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
        .tint(Color("brandPrimary", bundle: nil))
    }
}

#Preview {
    AppetizersTabView()
}
