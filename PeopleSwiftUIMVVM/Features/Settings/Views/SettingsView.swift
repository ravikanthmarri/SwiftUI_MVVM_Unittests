//
//  SettingsView.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 27/12/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage(UserDefaultKeys.hapticsEnabled) private var isHapticsEnabled: Bool = true
    
    var body: some View {
            Form {
                haptics
            }
            .navigationTitle("Settings")
            //.embedInNavigation()
        
    }
}

private extension SettingsView {
    var haptics: some View {
        Toggle("Enable Haptics", isOn: $isHapticsEnabled)
            .accessibilityIdentifier("hapticsToggle")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
