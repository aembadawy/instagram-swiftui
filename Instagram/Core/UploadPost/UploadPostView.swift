//
//  UploadPostView.swift
//  Instagram
//
//  Created by Aya on 14/06/2025.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var isPickerPresented = false
    @StateObject private var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    self.caption = ""
                    self.viewModel.selectedImage = nil
                    self.viewModel.postImage = nil
                    self.tabIndex = 0
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
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipped()
                } else {
                    ProgressView()
                }
                
                
                TextField(
                    "Enter your caption...",
                    text: $caption,
                    axis: .vertical
                )
            }.padding()
            
            Spacer()
        }
        .onAppear {
            isPickerPresented.toggle()
        }
        .photosPicker(isPresented: $isPickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
