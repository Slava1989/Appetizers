//
//  Appetizer.swift
//  Appetizers
//
//  Created by Slava Chirita on 05.01.2024.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let imageURL: String
    let name: String
    let price: Double
    let description: String
    let carbs: Int
    let calories: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           description: "This is a description for appetizer. Smth very long and informative",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           description: "This is a description for appetizer. Smth very long and informative",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItemTwo = Appetizer(id: 2,
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           description: "This is a description for appetizer. Smth very long and informative",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItemThree = Appetizer(id: 3,
                                           imageURL: "",
                                           name: "Test Appetizer",
                                           price: 9.99,
                                           description: "This is a description for appetizer. Smth very long and informative",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
