//
//  PersonItemView.swift
//  PeopleSwiftUIMVVM
//
//  Created by Ravikanth on 24/12/2023.
//

import SwiftUI

struct PersonItemView: View {
    
    let user: User
    
    var body: some View {
        VStack(spacing: .zero) {
            
            AsyncImage(url: .init(string: user.avatar)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 130)
                    .clipped()
                
            } placeholder: {
                ProgressView()
            }

            
            VStack(alignment: .leading) {
                
                PillView(id: user.id)
                
                Text("\(user.firstName) \(user.lastName)")
                    .foregroundStyle(Theme.text)
                    .font(
                        .system(.body, design: .rounded)
                    )
            }
            .frame(maxWidth: .infinity,
                   alignment: .leading)
            .padding(.horizontal, 8)
            .padding(.vertical, 5)
            .background(Theme.detailBackground)
        }
        .clipShape(RoundedRectangle(cornerRadius: 16,
                                    style: .continuous))
        .shadow(color: Theme.text.opacity(0.1),
                radius: 2,
                x: 0,
                y: 1)
    }
}

#Preview {
    
    var previewUser: User {
       let users = try! StaticJSONMapper.decode(file: "UsersStaticData",
                                            type: UsersResponse.self)
        return users.data.first!
    }
    
    return PersonItemView(user: previewUser)
        .frame(width: 250)
}
