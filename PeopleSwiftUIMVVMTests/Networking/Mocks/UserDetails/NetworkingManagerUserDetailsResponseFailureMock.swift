//
//  NetworkingManagerUserDetailsResponseFailureMock.swift
//  PeopleSwiftUIMVVMTests
//
//  Created by Ravikanth on 12/01/2024.
//

import Foundation
@testable import PeopleSwiftUIMVVM

class NetworkingManagerUserDetailsResponseFailureMock: NetworkingManagerImpl {
    
    func request<T>(session: URLSession, _ endpoint: Endpoint, type: T.Type) async throws -> T where T : Decodable {
        throw NetworkingManager.NetworkingError.invalidUrl
    }
    
    func request(session: URLSession, _ endpoint: Endpoint) async throws {}
}
