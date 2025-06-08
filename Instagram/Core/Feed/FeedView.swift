//
//
//
//
//  Created by Aya on 08/06/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0...12, id: \.self) { post in
                        FeedItemView()
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram-1")
                        .resizable()
                        .frame(width: 110, height: 34)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

