//
//  UsersResponse.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 23/12/2023.
//


// MARK: - UsersResponse
struct UsersResponse: Codable, Equatable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support
}
