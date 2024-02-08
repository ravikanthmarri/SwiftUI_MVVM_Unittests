//
//  View+Navigation.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 13/01/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func embedInNavigation() -> some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                self
            }
        } else {
            NavigationView {
                self
            }
        }
    }
}
