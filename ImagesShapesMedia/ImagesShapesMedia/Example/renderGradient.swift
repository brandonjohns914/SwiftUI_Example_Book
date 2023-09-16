//
//  renderGradient.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct renderGradient: View {
    var body: some View {
        List {
            VStack(alignment: .center) {
                Rectangle().fill(.blue.gradient)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(LinearGradient(gradient: Gradient(colors: [.gray, .blue, .black]), startPoint:.top, endPoint: .bottom))
                    .padding()
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint:.top, endPoint: .bottom))
                    .padding()
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(LinearGradient(gradient: Gradient(colors: [.gray, .blue, .black]), startPoint:.leading, endPoint: .trailing))
                    .padding()
                
                Circle()
                    .fill(RadialGradient(gradient: Gradient(colors: [.cyan,.blue,.gray,.black]), center: .center, startRadius: 50, endRadius: 100))
                    .frame(width: 200, height: 200)
                
                Circle()
                    .fill(AngularGradient(gradient: Gradient(colors: [.green,.blue,.gray,.black]), center: .center))
                    .frame(width: 200, height: 200)
                Circle()
                    .fill(
                        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                    )
                    .frame(width: 200, height: 200)
                
                
                Circle()
                    .strokeBorder(
                        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                        lineWidth: 50
                    )
                    .frame(width: 200, height: 200)
                
            }
        }
    }
}

struct renderGradient_Previews: PreviewProvider {
    static var previews: some View {
        renderGradient()
    }
}
