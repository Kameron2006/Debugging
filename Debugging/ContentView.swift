//
//  ContentView.swift
//  Debugging
//
//  Created by Scholar on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    // You were very close! But we need to make this "name" variable to a @State property because it's storing data: the user's name
    @State private var name: String = ""
    @State private var food: String = ""
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)
            // Then once you create that @State code for the variable name, you then add a "$" to name to indicate that the name data should be stored here
            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            // Great Job on putting the correct variable name!!👍🏽 The thing that caused a error was you were missing a dollar sign. Since this value is storing a changing variable, we need the "$" to make the variable two-way binding.
            TextField("Favorite food", text: $food)
                .textFieldStyle(.roundedBorder)
                .padding()

            Button("Submit") {
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .alert("Thanks, \\(name)! We now know your favorite food is \\(food)!", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
