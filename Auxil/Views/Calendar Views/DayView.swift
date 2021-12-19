//
//  DayView.swift
//  Auxil
//
//  Created by Oluwatomilayo Shittu on 2021-12-19.
//

import SwiftUI


let date = Date()
let calendar = Calendar.current
let day = calendar.component(.day, from: date)
let month = calendar.component(.month, from: date)
let dayy = "\(day)"
let monthh = "\(month)"

let motnht = ((DateFormatter().monthSymbols[month-1].capitalized))

struct DayView: View {
    var body: some View {
        ZStack(){
        RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
            .frame(width: 350, height: 350)
            VStack(){
                Text(motnht)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .font(.system(size:40))
                
                Text(dayy)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                    .font(.system(size:150))
                    .padding(.bottom, 50.0)
            }
        }
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
    }
}
