//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Slava Chirita on 05.01.2024.
//

import SwiftUI

struct AppetizersListView: View {
    @StateObject private var viewModel = AppetizersViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .task {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AppetizersListView()
}
