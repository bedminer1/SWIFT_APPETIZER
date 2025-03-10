//
//  Alert.swift
//  Appetizer
//
//  Created by Alex on 9/3/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    var id: UUID = UUID()
    var title: Text
    var message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // Fetching Data
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid."),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from server. Please try again later."),
                                           dismissButton: .default(Text("OK")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      message: Text("There was error connecting to server. Please try again later."),
                                      dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete. Please check connection."),
                                            dismissButton: .default(Text("OK")))
    
    // Account Form
    static let emptyField = AlertItem(title: Text("Field is Empty"),
                                      message: Text("All fields are required."),
                                      dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                        message: Text("Please enter a valid email address."),
                                        dismissButton: .default(Text("OK")))
}
