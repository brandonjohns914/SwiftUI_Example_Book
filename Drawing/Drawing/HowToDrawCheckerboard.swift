//
//  HowToDrawCheckerboard.swift
//  Drawing
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct Checkerboard: Shape {
    let rows: Int
    let columns: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // figure out how big each row/column needs to be
        let rowSize = rect.height / Double(rows)
        let columnSize = rect.width / Double(columns)
        
        // loop over all rows and columns, making alternating squares colored
        for row in 0 ..< rows {
            for column in 0 ..< columns {
                if (row + column).isMultiple(of: 2) {
                    // this square should be colored; add a rectangle here
                    let startX = columnSize * Double(column)
                    let startY = rowSize * Double(row)
                    
                    let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
                    path.addRect(rect)
                }
            }
        }
        
        return path
    }
}
struct HowToDrawCheckerboard: View {
    var body: some View {
        Checkerboard(rows: 16, columns: 16)
            .fill(.blue)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    HowToDrawCheckerboard()
}
