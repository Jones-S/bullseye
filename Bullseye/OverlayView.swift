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
    VStack {
      Spacer()
      Text("Some Info")
      Spacer()
      Text("📡")
      Spacer()
      Text("Blablabla 💬")
      Spacer()
    }
  .navigationBarTitle("Info Screen")
  }
}

struct OverlayView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(
      .fixed(width: 896, height: 414))
  }
}
