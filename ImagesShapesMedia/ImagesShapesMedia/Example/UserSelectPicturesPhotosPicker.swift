//
//  UserSelectPicturesPhotosPicker.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/18/23.
//

import PhotosUI
import SwiftUI

struct UserSelectPicturesPhotosPicker: View {
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0..<selectedImages.count, id: \.self) { i in
                        selectedImages[i]
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300,height: 300)
                        
                    }
                }
            }
            .toolbar {
                PhotosPicker("Select images", selection: $selectedItems, matching: .images)
            }
            .onChange(of: selectedItems) { _ in
                            Task {
                                selectedImages.removeAll()

                                for item in selectedItems {
                                    if let data = try? await item.loadTransferable(type: Data.self) {
                                        if let uiImage = UIImage(data: data) {
                                            let image = Image(uiImage: uiImage)
                                            selectedImages.append(image)
                            }
                        }
                    }
                }
            }
        }
        
        
        
        
        
        
        VStack {
            PhotosPicker("Select avatar", selection: $avatarItem, matching: .images)
            
            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
        .onChange(of: avatarItem) { _ in
            Task{
                if let data = try? await
                    avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data){
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
                print("failed")
            }
        }
        
        
        
        
    }
}

struct UserSelectPicturesPhotosPicker_Previews: PreviewProvider {
    static var previews: some View {
        UserSelectPicturesPhotosPicker()
    }
}
