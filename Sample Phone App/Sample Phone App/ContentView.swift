//
//  ContentView.swift
//  Sample Phone App
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
//     the body of the structure
    var body: some View {
        VStack {
//            display text
            Text("Click buttons below to change the counter")
            
//        display counter so its below the text and above the buttons
            Text(String(count))
            .padding(30)
                         

            HStack {
                           // Styles and displays the increment button
                           Button("Increment", action: Increment)
                               .padding()
                               .background(Color.blue)
                               .foregroundColor(.white)
                               .cornerRadius(10)
                           
                           // Styles and displays the decrement button
                           Button("Decrement", action: Decrement)
                               .padding()
                               .background(Color.blue)
                               .foregroundColor(.white)
                               .cornerRadius(10)
                       }
                   }
               }
                
            
//    Button command that adds one to the counter but doesnt go over 50
            func Increment() {
                if count < 50 {
                    count += 1
                }
    
            }
//    Button command that subtracts one to the counter but doesnt go below 0
            func Decrement() {
                if count > 0 {
                    count -= 1
                }
            
                    
        }
       
    }


//   displays preview of the iphone on the side screen
#Preview{
    ContentView()
}
            
