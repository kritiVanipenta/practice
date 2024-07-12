//
//  ContentView.swift
//  practice
//
//  Created by Kriti Vanipenta on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    
    var body: some View {
        VStack{
            Text(textTitle)
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
                .padding(5)
            
            
            Button("Submit Name") {
                print(textTitle = "Goodbye, \(name)!")
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)//rounded border, filled in
            .tint(.pink)
        }
    }
}

#Preview {
    ContentView()
}
