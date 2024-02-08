//
//  CreateViewModel.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 26/12/2023.
//

import Foundation

final class CreateViewModel: ObservableObject {
    
    @Published var person = NewPerson()
    @Published private(set) var state: SubmissionState?
    @Published private(set) var error: FormError?
    @Published var hasError = false
    
    private let validator = CreateValidator()
    
    @MainActor
    func create() async {
        
        do {
            try validator.validate(person)
            state = .submitting
            
            let encoder = JSONEncoder()
            encoder.keyEncodingStrategy = .convertToSnakeCase
            let data = try encoder.encode(person)
    
            try await NetworkingManager.shared.request(.create(submissionData: data))
            
            state = .successful
        } catch {
            self.hasError = true
            self.state = .unsuccessful
            
            switch error {
                
            case is NetworkingManager.NetworkingError:
                self.error = .networking(error: error as! NetworkingManager.NetworkingError)
            case is CreateValidator.CreateValidatorError:
                self.error = .validation(error: error as! CreateValidator.CreateValidatorError)
            default:
                self.error = .system(error: error)
            }
            
        }
        
    }
}


extension CreateViewModel {
    enum SubmissionState {
        case unsuccessful
        case successful
        case submitting
    }
}


extension CreateViewModel {
    enum FormError: LocalizedError {
        case networking(error: LocalizedError)
        case validation(error: LocalizedError)
        case system(error: Error  )
    }
}

extension CreateViewModel.FormError {
    
    var errorDescription: String? {
        switch self {
        case .networking(let err),
             .validation(let err):
            return err.errorDescription
        case .system(let err):
            return err.localizedDescription
        }
    }
}
