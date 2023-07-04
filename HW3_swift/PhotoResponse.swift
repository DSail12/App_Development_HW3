//
//  PhotoResponse.swift
//  HW3_swift
//
//  Created by Eugene Zvyagin on 05.07.2023.
//

struct PhotoResponse: Decodable {
    let response: Photos
}

struct Photos: Decodable {
    let count: Int
    let items: [Photo]
}

struct Photo: Decodable {
    let sizes: [Size]
}

struct Size: Decodable{
    let type: String
    let url: String
}
