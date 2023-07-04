//
//  GroupResponse.swift
//  HW3_swift
//
//  Created by Eugene Zvyagin on 05.07.2023.
//

struct GroupResponse: Decodable {
    let response: Groups
}

struct Groups: Decodable {
    let count: Int
    let items: [Int]
}
