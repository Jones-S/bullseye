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
      HStack {
        Text("Enter a value close to:")
        Text("100")
      }
      
      HStack {
        Slider(value: .constant(10))
      }
      
      HStack {
        Button(action: {
          self.buttonIsShown = true
        }) {
          Text("Restart")
        }
        Text("Score:")
        Text("9999999")
        
        Text("Round:")
        Text("999")
        
        Button(action: {
          self.buttonIsShown = true
        }) {
          Text("Info")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(
      .fixed(width: 896, height: 441))
  }
}
