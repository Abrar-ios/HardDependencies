//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import Foundation

class MySingletonAnalytics {
    private static let instance = MySingletonAnalytics()
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif
    
    static var shared : MySingletonAnalytics{
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }
    
    func track(event: String){
        Analytics.shared.track(event: event)
        if(self !== MySingletonAnalytics.instance){
            print(">>.... Not the MySingletonAnalytics Analytics")
        }
    }
}
