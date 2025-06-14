//
//  SearchView.swift
//  Instagram
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image("avatar")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text("@\(user.username)")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                            .font(.caption)
                                    }
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: User.self) { user in
                ProfileView(user: user)
            }
            .searchable(text: $searchText,
                        prompt: "Search...")
        }
    }
}

#Preview {
    SearchView()
}
