//
//  Styles.swift
//  Auxil
//
//  Created by Owen Waldron on 2021-10-26.
//


// File to have stylistic contents: colors, gradients, etc.

import Foundation
import SwiftUI

// Background created by combining two gradients
struct background_light: View {
    let gradient_primary_light = Color(red: (60/255), green: (180/255), blue: (244/255), opacity: 1.0)
    let gradient_secondary_light = Color(red: (96/255), green: (143/255), blue: (248/255), opacity: 0.9647)
    let gradient_tertiary_light = Color(red: (177/255), green: (60/255), blue: (244/255), opacity: 0.88)

    var body: some View {
        VStack (spacing: 0) {
            LinearGradient(gradient: Gradient(colors: [gradient_primary_light, gradient_secondary_light]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1))
                .frame(height: 100)
            ZStack (alignment: .bottom) {
                LinearGradient(gradient: Gradient(colors: [gradient_secondary_light, gradient_tertiary_light]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 0, y: 1))
                let shape = RoundedRectangle(cornerRadius: 25)
                shape.padding().foregroundColor(.white).frame(height: 115)
                shape.strokeBorder(lineWidth: 3).padding().frame(height: 115).foregroundColor(Color.blue)
            }
        }.ignoresSafeArea()
        
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        // Put a structure in here to preview it
        background_light()
    }
}
