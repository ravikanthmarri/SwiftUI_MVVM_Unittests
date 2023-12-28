//
//  Models.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 23/12/2023.
//

// MARK: - User
struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
