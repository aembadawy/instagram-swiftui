//
//  UserStateView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct UserStateView: View {
    var name: String
    var value: String
    
    var body: some View {
        VStack {
            Text(value)
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(name)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStateView(name: "Posts", value: "100")
}
