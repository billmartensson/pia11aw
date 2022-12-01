//
//  ComplicationViews.swift
//  pia11aw Watch App
//
//  Created by Bill Martensson on 2022-12-01.
//

import SwiftUI
import ClockKit

struct ComplicationViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct ComplicationViewCircular: View {
  // 2

    @State var fancytext = "Hej"
    
  var body: some View {
    // 3
    ZStack {
      ProgressView(fancytext, value: 0.7, total: 1.0)
        .progressViewStyle(CircularProgressViewStyle(tint: .red))
        
    }
  }
}






struct ComplicationViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
          // 2
          CLKComplicationTemplateGraphicCircularView(ComplicationViewCircular())
                .previewContext()
        }
    }
}
