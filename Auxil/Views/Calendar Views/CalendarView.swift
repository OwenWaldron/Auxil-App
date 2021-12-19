//
//  CalendarView.swift
//  Auxil
//
//  Created by Owen Waldron on 2021-09-28.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        ZStack{
       background_light()
        VStack(alignment: .center) {
            Text("Home").foregroundColor(Color.white).font(.system(size: 30))
           
        /*RoundedRectangle(cornerRadius: 20.0).fill(Color.clear).frame(width: 350, height: 70) //spacer rectangle */
            
            HStack{ // Add the like scroll row of days?
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                    .frame(width: 75, height: 75)
                    .padding()
            }
            
            HStack{
            DayView() // add the scrolling dates
            }
            
            Button(action:goToLog) // ADD WHITE BACKGROUND TO BUTTON, ADD RIGHT ARROW NEXT TO WORDS
            {
                Text("Start your log").font(.system(size:30)).foregroundColor(.purple)
            }
            .padding(.bottom, 10.0)
            RoundedRectangle(cornerRadius: 20.0).fill(Color.clear).frame(width: 350, height: 70)
            }
            
            
        }
        
    }
}

func goToLog(){
    
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
