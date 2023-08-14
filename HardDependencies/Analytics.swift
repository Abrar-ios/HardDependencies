//
//  Analytics.swift
//  HardDependencies
//
//  Created by HAQQQABD on 14/08/2023.
//

import Foundation

class Analytics {
    
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        if self !== Analytics.shared {
            print(">> ..... Not the Analytics singleton")
        }
    }
    
}
