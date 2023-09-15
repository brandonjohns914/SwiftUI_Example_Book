//
//  TextinsideTextViews.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/14/23.
//

import SwiftUI

struct TextinsideTextViews: View {
    @State private var ingredients = [String]()
    @State private var rolls = [Int]()
    
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    
    static let taskeDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    let dueDate = Date.now
    
    
    var body: some View {
        VStack {
            Text("Task due date: \(dueDate, formatter: Self.taskeDateFormat)")
                .padding()
            
            Text(72.3, format: .currency(code: "USD"))
                .padding()
            
            Text(length, format: .measurement(width: .wide))
                .padding()
            
            Text(rolls, format: .list(memberStyle: .number, type: .and))
                 
                 Button("Roll Dice") {
                let result = Int.random(in: 1...6)
                rolls.append(result)
            }
                 .padding()
            Text(ingredients, format: .list(type: .and))
            
            Button("Add Ingredient"){
                let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                
                if let newIngredient = possibles.randomElement() {
                    ingredients.append(newIngredient)
                }
            }
            .padding()
        }
    }
}

struct TextinsideTextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextinsideTextViews()
    }
}


