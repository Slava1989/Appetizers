//
//  OrderView.swift
//  Appetizers
//
//  Created by Slava Chirita on 05.01.2024.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("order placed")
                    } label: {
                        APButton(title: "$ \(order.totalPrice, specifier: "%.2f") - Place order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add an appetizer.")
                }
            }
            .navigationTitle("🛒 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}
#Preview {
    OrderView()
}
