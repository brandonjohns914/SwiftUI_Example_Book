//
//  AttributedStringTextStyling.swift
//  WorkingWithStaticText
//
//  message customizations belong to the string

import SwiftUI

struct AttributedStringTextStyling: View {
    
   
    
    
    var body: some View {
        VStack {
            
            Text(message)
                .padding()
            Text(message1 + message2)
                .padding()
            Text(message3)
                .padding()
            Text(message4)
                .padding()
            Text(message5)
                .padding()
            Text(message6)
                .padding()
            Text(message7)
                .padding()
            Text(message8)
                .padding()
            Text(message9)
                .padding()
        }
    }
}

struct AttributedStringTextStyling_Previews: PreviewProvider {
    static var previews: some View {
        AttributedStringTextStyling()
    }
}

extension AttributedStringTextStyling  {
    var message: AttributedString {
        var result = AttributedString("Hello, world!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var message1: AttributedString {
        var result = AttributedString("Hello")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var message2: AttributedString {
        var result = AttributedString("World!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var message3: AttributedString {
        var result = AttributedString("Testing 1 2 3!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: .white)
        return result
    }
    
    var message4: AttributedString {
        let string  = "The letters go up and down"
        var result = AttributedString()
        
        for (index, letter) in string.enumerated() {
            var letterString = AttributedString(String(letter))
            letterString.baselineOffset = sin(Double(index)) * 5
            result += letterString
        }
        result.font = .largeTitle
        return result
        
    }
    
    var message5: AttributedString {
        var result = AttributedString("Learn Swift here")
        result.font = .largeTitle
        result.link = URL(string: "https://www.hackingwithswift.com")
        return result
    }
    var message6: AttributedString {
        var password = AttributedString("abCayer-muQai")
        password.accessibilitySpeechSpellsOutCharacters = true
        return "Your password is: " + password
    }
    
    var message7: AttributedString {
        var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
        result.foregroundColor = .secondary
        
        let weekday = AttributeContainer.dateField(.weekday)
        let weekdayStyling = AttributeContainer.foregroundColor(.primary)
        result.replaceAttributes(weekday, with: weekdayStyling)
        
        return result
            
        
    }
    var message8: AttributedString {
        var components = PersonNameComponents()
        components.givenName = "Taylor"
        components.familyName = "Swift"
        
        var result = components.formatted(.name(style: .long).attributed)
        let familyNamesStyling = AttributeContainer.font(.headline)
        let familyName = AttributeContainer.personNameComponent(.familyName)
        result.replaceAttributes(familyName, with: familyNamesStyling)
        return result
    }
    
    var message9: AttributedString {
         var amount = Measurement(value: 200, unit: UnitLength.kilometers)
        var result = amount.formatted(.measurement(width: .wide).attributed)
        let distanceStyling = AttributeContainer.font(.title)
        let distance = AttributeContainer.measurement(.value)
        result.replaceAttributes(distance, with: distanceStyling)
        
        return result
    }
}
