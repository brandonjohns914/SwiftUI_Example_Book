//
//  ClipViewOnlyPartisVisible.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct ClipViewOnlyPartisVisible: View {
    var body: some View {
        VStack {
            Button {
                print("Button pressed")
            } label: {
                Image("bolt.fill")
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .clipShape(Circle())
            }
            
            Button {
                print("Button pressed")
            } label: {
                Image("bolt.fill")
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(.green)
                    .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    ClipViewOnlyPartisVisible()
}
