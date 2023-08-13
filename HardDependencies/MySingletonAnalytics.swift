//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import Foundation

class MySingletonAnalytics {
    static let shared = MySingletonAnalytics()
    
    func track(event: String){
        Analytics.shared.track(event: event)
        if(self !== MySingletonAnalytics.shared){
            print(">>.... Not the MySingletonAnalytics Analytics")
        }
    }
}
