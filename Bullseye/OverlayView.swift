//
//  OverlayView.swift
//  Bullseye
//
//  Created by Jonas Scheiwiller on 11.11.19.
//  Copyright © 2019 Jonas Scheiwiller. All rights reserved.
//

import SwiftUI

struct OverlayView: View {
  var body: some View {
    Group {
      VStack {
        Text("Some Info")

        Text("📡")

        Text("Blablabla 💬")

      }
      .navigationBarTitle("Info Screen")
      .background(Color.gray)
    }
    .background(Image("pattern"))
  }
}

struct OverlayView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(
      .fixed(width: 896, height: 414))
  }
}
