//
//  DynamicallyChangeVStackHStack.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct DynamicallyChangeVStackHStack: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    
    var body: some View {
        //let layout = horizontalSizeClass == .regular ?
        let layout = dynamicTypeSize <= .xxxLarge ?
        AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        
        layout {
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }
        .font(.largeTitle)
        
       
        
    }
}



#Preview {
    DynamicallyChangeVStackHStack()
}
