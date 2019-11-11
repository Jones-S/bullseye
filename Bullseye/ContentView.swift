//
//  ContentView.swift
//  Bullseye
//
//  Created by Jonas Scheiwiller on 11.11.19.
//  Copyright © 2019 Jonas Scheiwiller. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var buttonIsShown: Bool = false
    
    var body: some View {
        VStack {
           Text("Hello, World!")
            Button(action: {
                print("Button pressed")
                self.buttonIsShown = true
            }) {
                Text("Knock Knock")
            }
            .alert(isPresented: $buttonIsShown) { () ->
                Alert in
                return Alert(title: Text("Who's there"),
                             message: Text("Who's there"),
                             dismissButton: .default(Text("Close")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
