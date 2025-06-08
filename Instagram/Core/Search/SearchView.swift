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
                    ForEach(0...15, id: \.self) { user in
                        HStack {
                            Image("images")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("@jmb")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                Text("Jean-Michel Basquiat")
                                    .font(.caption)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.horizontal)
                       
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText,
                        prompt: "Search...")
            
        }
    }
}

#Preview {
    SearchView()
}
