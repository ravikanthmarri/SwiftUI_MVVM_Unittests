//
//  Models.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 23/12/2023.
//

// MARK: - User
struct User: Codable, Equatable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable, Equatable  {
    let url: String
    let text: String
}
