//
//  ReturnDifferentViewTypes.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct TossResult: View {
    var body: some View {
        if Bool.random() {
            Image("Ellie2")
                .resizable()
                .scaledToFit()
        } else {
            Text("Better luck next time")
                .font(.title)
        }
    }
}

struct ReturnDifferentViewTypes: View {
    
    //viewbuilder might be to much for one view
    //@ViewBuilder var tossResult: some View {
    var tossResult: some View {
        Group {
            if Bool.random() {
                Image("Ellie2")
                    .resizable()
                    .scaledToFit()
            } else {
                Text("Better luck next time")
                    .font(.title)
            }
        }
        //.frame(width: 300, height: 300)
    }
    var body: some View {
        VStack {
            Text("Coin Flip")
                .font(.largeTitle)
            //tossResult
            TossResult()
                .frame(width: 300, height: 300)
            
        }
    }
}

struct ReturnDifferentViewTypes_Previews: PreviewProvider {
    static var previews: some View {
        ReturnDifferentViewTypes()
    }
}
