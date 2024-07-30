//
//  questionTwoView.swift
//  QuestionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct questionTwoView: View {
    @State private var response = ""
    var body: some View {
        VStack {
            Text("What is your favorite color?")
                .font(.title)
            
            HStack {
                Button("🟣") {
                    response = "W color"
                }
                Button("🔵") {
                    response = "That's pretty good."
                }
                Button("🔴") {
                    response = "Good choice."
                }
                Button("🟢") {
                    response = "Sage green is the best kind of green."
                }
                Button("🟡") {
                    response = "ew what"
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
    }
}

#Preview {
    questionTwoView()
}
