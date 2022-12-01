//
//  ContentView.swift
//  pia11awios
//
//  Created by Bill Martensson on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = AWConnect()
    
    @State var someone = Person()
    
    var body: some View {
        VStack {
            
            Text(model.messageText)
            
            Button(action: {
                model.session.sendMessage(["message": "från telefon"], replyHandler: nil) { error in
                    
                }
            }) {
                Text("Skicka")
            }
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text(someone.firstname)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
