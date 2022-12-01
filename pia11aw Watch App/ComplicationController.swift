//
//  ComplicationController.swift
//  pia11aw Watch App
//
//  Created by Bill Martensson on 2022-12-01.
//

import Foundation
import SwiftUI
import ClockKit


class ComplicationController : NSObject, CLKComplicationDataSource {
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        
        if(complication.family == .circularSmall) {
            
            let entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: CLKComplicationTemplateGraphicCircularView(ComplicationViewCircular()))
            
            handler(entry)
        }
        
    }
    
    /*
    func currentTimelineEntry(for complication: CLKComplication) async -> CLKComplicationTimelineEntry? {
        
    }
    */
    
}
