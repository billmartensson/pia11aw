//
//  AWConnectWatch.swift
//  pia11aw Watch App
//
//  Created by Bill Martensson on 2022-12-01.
//

import Foundation
import SwiftUI
import WatchConnectivity

class AWConnectWatch : NSObject, WCSessionDelegate, ObservableObject {
    
    var session : WCSession
    
    @Published var messageText = ""
    
    init(session: WCSession = .default){
        self.session = session
        super.init()
        self.session.delegate = self
        session.activate()
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.messageText = message["message"] as? String ?? "Unknown"
        }
    }
    
    
    
    
    
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    
    
    
    
    
}
