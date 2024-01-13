//
//  Alert.swift
//  Appetizers
//
//  Created by Slava Chirita on 11.01.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: Network error messages
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data received from the server was invalid."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from server."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server."),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Something went wrong."),
                                              dismissButton: .default(Text("OK")))
    
    //MARK: Text form error messages
    
    static let invalidForm = AlertItem(title: Text("Invalid Form Error"),
                                              message: Text("Please ensure all fields in the form have been filled out."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email Error"),
                                              message: Text("Please ensure your email is valid."),
                                              dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your profile info was saved."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving or removing data."),
                                              dismissButton: .default(Text("OK")))
    
}
