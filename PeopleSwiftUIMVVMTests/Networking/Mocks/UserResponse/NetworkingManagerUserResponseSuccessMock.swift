//
//  NetworkingManagerUserResponseSuccessMock.swift
//  PeopleSwiftUIMVVMTests
//
//  Created by Ravikanth on 12/01/2024.
//

import Foundation
@testable import PeopleSwiftUIMVVM 

class NetworkingManagerUserResponseSuccessMock: NetworkingManagerImpl {
    
    func request<T>(session: URLSession, _ endpoint: Endpoint, type: T.Type) async throws -> T where T : Decodable, T : Encodable {
        return try StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self) as! T
    }
    
    func request(session: URLSession, _ endpoint: Endpoint) async throws { }
}
