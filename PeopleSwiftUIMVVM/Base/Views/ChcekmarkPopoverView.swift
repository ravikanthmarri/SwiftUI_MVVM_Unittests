//
//  ChcekmarkPopoverView.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 26/12/2023.
//

import SwiftUI

struct ChcekmarkPopoverView: View {
    var body: some View {
        Symbols.checkmark
            .font(.system(.largeTitle, design: .rounded).bold())
            .padding()
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    ChcekmarkPopoverView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(.blue)
}
