//
//  PeopleSwiftUIMVVMApp.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 23/12/2023.
//

import SwiftUI

@main
struct PeopleSwiftUIMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                PeopleView()
                    .tabItem {
                        Symbols.person
                        Text("Home")
                    }
                SettingsView()
                    .tabItem {
                        Symbols.gear
                        Text("Settings")
                    }
            }
        }
    }
}
