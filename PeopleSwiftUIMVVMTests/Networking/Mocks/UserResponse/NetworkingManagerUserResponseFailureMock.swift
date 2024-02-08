//
//  NetworkingManagerUserResponseFailureMock.swift
//  PeopleSwiftUIMVVMTests
//
//  Created by Ravikanth on 12/01/2024.
//

import Foundation
@testable import PeopleSwiftUIMVVM


class NetworkingManagerUserResponseFailureMock: NetworkingManagerImpl {
    
    func request<T>(session: URLSession, _ endpoint: Endpoint, type: T.Type) async throws -> T where T : Decodable, T : Encodable {
        throw NetworkingManager.NetworkingError.invalidUrl
    }
    
    func request(session: URLSession, _ endpoint: Endpoint) async throws {}
}
