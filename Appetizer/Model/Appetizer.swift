//
//  Appetizer.swift
//  Appetizer
//
//  Created by Alex on 9/3/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable  {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test Name",
                                           description: "Test Description",
                                           price: 9.99,
                                           imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg",
                                           calories: 700,
                                           protein: 12,
                                           carbs: 19)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
