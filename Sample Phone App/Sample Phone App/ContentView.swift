//
//  ContentView.swift
//  Sample Phone App
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
//            display text
            Text("Click buttons below to change the counter")
//        display counter so its below the text and above the buttons
            Text(String(count))
            .padding(30)
                         
//            Button command that adds one to the counter but doesnt go over 50
            HStack {
                Button(action: {
                    if count < 50{
                        count += 1
                    }
                }) {
//                    styles and displays the button
                    Text("Increment")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
//                Button command that subtracts one to the counter but doesnt go below 0
                Button(action: {
                    if count > 0 {
                        count -= 1
                    }
                }) {
//                styles and displays the button
                    Text("Decrement")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
           
                    
        }
        .padding()
    }
}


#Preview{
    ContentView()
}
