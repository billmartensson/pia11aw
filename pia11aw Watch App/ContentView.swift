//
//  ContentView.swift
//  pia11aw Watch App
//
//  Created by Bill Martensson on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = AWConnectWatch()
    
    @State var thetext = ""
    @State var mynumber = 0
    
    @State var someone = Person()
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack {
                    
                    Group {
                        Text(model.messageText)
                        
                        Button(action: {
                            model.session.sendMessage(["message": "från klocka"], replyHandler: nil) { error in
                                
                            }
                        }) {
                            Text("Skicka")
                        }
                    }
                    
                    
                    
                    Button(action: {
                        mynumber = mynumber + 1
                    }) {
                        Text(String(mynumber))
                    }
                    
                    Text(someone.firstname)
                    
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                    
                    HStack {
                        Text("AAAA")
                        Text("BBBB")
                            .padding()
                            .background(.blue)
                    }
                    
                    NavigationLink(destination: ReadmoreView()) {
                        Text("Läs mer...")
                    }
                    
                    TextField("Skriv här", text: $thetext)
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                    }
                    
                    Group {
                        Text("Hej")
                            .padding()
                        Text("Tjena")
                            .padding()
                        Text("Banan")
                            .padding()
                        Text("Apelsin")
                            .padding()
                    }
                    
                }
                .padding()
            }
            
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
