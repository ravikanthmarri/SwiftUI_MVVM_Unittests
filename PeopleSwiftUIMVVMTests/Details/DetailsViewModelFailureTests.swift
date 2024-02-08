//
//  DetailsViewModelFailureTests.swift
//  PeopleSwiftUIMVVMTests
//
//  Created by Ravikanth on 13/01/2024.
//

import XCTest
@testable import PeopleSwiftUIMVVM

class DetailsViewModelFailureTests: XCTestCase {
    
    private var networkingMock: NetworkingManagerImpl!
    private var vm: DetailViewModel!
    
    override func setUp() {
        networkingMock = NetworkingManagerUserDetailsResponseFailureMock()
        vm = DetailViewModel(networkingManager: networkingMock)
    }
    
    override func tearDown() {
        networkingMock = nil
        vm = nil
    }
    
    func test_with_unsuccessful_response_error_is_handled() async {

        XCTAssertFalse(vm.isLoading, "The view model should not be loading")
        
        defer {
            XCTAssertFalse(vm.isLoading, "The view model should not be loading")
        }
        
        await vm.fetchDetails(for: 1)
        
        XCTAssertTrue(vm.hasError, "The view model error should be true")
        
        XCTAssertNotNil(vm.error, "The view model error should not be nil")
    }
}

