//
//  UploadPostView.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import SwiftUI

struct UploadPostView: View {
    
    @State var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Cancel")
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("Upload Post")
                    .fontWeight(.semibold)
                
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                }
                .fontWeight(.semibold)
            }
            .padding(.horizontal)
            
            HStack(spacing: 8){
                Image("images-8")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                TextField(
                    "Enter your caption...",
                    text: $caption,
                    axis: .vertical
                )
            }.padding()
            
            Spacer()
        }
    }
}

#Preview {
    UploadPostView()
}
