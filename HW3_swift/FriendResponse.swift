//
//  FriendResponse.swift
//  HW3_swift
//
//  Created by Eugene Zvyagin on 05.07.2023.
//

struct FriendResponse: Decodable {
    let response: Response
}

struct Response: Decodable {
    let count: Int
    let items: [Item]
}

struct Item: Decodable {
    let city: City?
    let photoOneHundred: String
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case city
        case photoOneHundred = "photo_100"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

struct City: Decodable {
    let title: String
}
