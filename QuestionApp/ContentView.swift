//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var response = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("How are you feeling today?")
                    .font(.title)
                
                HStack {
                    Button("😜") {
                        response = "YAY!!"
                    }
                    Button("😃") {
                        response = "That's pretty good."
                    }
                    Button("🙂") {
                        response = "Most people are in this zone."
                    }
                    Button("😢") {
                        response = "boohoo."
                    }
                    Button("😡") {
                        response = "RAHHH!"
                    }
                }
                Text(response)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 100.0)
                
                NavigationLink(destination: questionTwoView()) {
                    Text("Onward!")
                        .padding([.top, .leading], 175.0)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
