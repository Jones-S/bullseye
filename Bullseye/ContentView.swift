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
  @State var sliderValue: Double = 50.0
  @State var targetValue: Int = Int.random(in: 1...100)
  @State var score = 0
  
  func calculateScore(target:Int, score:Int) -> Int {
    let difference: Int = abs(target - score)
    let points: Int = 100 - difference
    return points
  }
  
  func roundedInt(value:Double) -> Int {
    return Int(value.rounded())
  }

  
  var body: some View {
    
    VStack {
      Spacer()
      
      HStack {
        Text("Enter a value close to:")
        Text("\(targetValue)")
      }
      
      Spacer()
      
      HStack {
        Text("1")
        Slider(value: $sliderValue, in: 1...100)
        Text("100")
      }
      
      Spacer()
      
      Button(action: {
        // self is needed because we're inside action
        self.buttonIsShown = true
        self.score = self.score + self.calculateScore(target: self.targetValue, score: self.roundedInt(value: self.sliderValue))

      }) {
        Text("Shoot")
      }
      .alert(isPresented: $buttonIsShown) { () -> Alert in
        let roundedValue = roundedInt(value: sliderValue)

        return Alert(
          title: Text("Great"),
          message: Text("You hit at \(roundedValue)"
            + "You scored \(calculateScore(target: targetValue, score: roundedValue))"

          ),
          dismissButton: .default(Text("OK")))
      }
      
      Spacer()
      
      HStack {
        Button(action: {
          print("hello")
        }) {
          Text("Restart")
        }
        
        Spacer()
        Text("Score:")
        Text("\(score)")
        
        Spacer()
        Text("Round:")
        Text("999")
        
        Spacer()
        Button(action: {
          self.buttonIsShown = true
        }) {
          Text("Info")
        }
          
        .padding(.bottom, 20)
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
