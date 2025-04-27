//
//  ContentView.swift
//  Debugging
//
//  Created by Scholar on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    let name = ""
    @State private var food: String = ""
    @State private var showAlert = false

    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)

            TextField("Enter name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            // The error below was you were missing a dollar sign. Since the 
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
