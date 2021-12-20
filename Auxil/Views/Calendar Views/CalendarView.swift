//
//  CalendarView.swift
//  Auxil
//
//  Created by Owen Waldron on 2021-09-28.
//

// how do i change the font of the text GRRRRR - Tomi

import SwiftUI

struct CalendarView: View {
    var body: some View {
        ZStack{
       background_light()
        VStack(alignment: .center) {
            Text("Home").foregroundColor(Color.white).font(.system(size: 30))
                    
            HStack{ // Add the like scroll row of days?
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                    .frame(width: 75, height: 75)
                    .padding()
            }
            
            HStack{
            DayView() // add the scrolling dates
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white).frame(width: 250, height: 70)
                
            Button(action:goToLog) // ADD RIGHT ARROW NEXT TO WORDS
            {
                Text("Start your log     →").font(.system(size:25)).foregroundColor(.purple)
               
            }
            }
            
            RoundedRectangle(cornerRadius: 20.0).fill(Color.clear).frame(width: 350, height: 70)
            
                .padding(.vertical, 15.0)
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
