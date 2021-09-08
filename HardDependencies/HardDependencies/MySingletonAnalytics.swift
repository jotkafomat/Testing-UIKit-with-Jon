//
//  MySingletonAnalytics.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import Foundation

class MySingletonAnalytics {
    
    static var shared: MySingletonAnalytics {
        #if DEBUG
        if let stubbedInstance = stubbedInstance {
            return stubbedInstance
        }
        #endif
        return instance
    }
    private static let instance = MySingletonAnalytics()
    
    #if DEBUG
    static var stubbedInstance: MySingletonAnalytics?
    #endif
    
    func track(event: String) {
        Analytics.shared.track(event: event)
        
        if self !== MySingletonAnalytics.instance {
            print("not a MySingletonANAlitics sigleton")
        }
    }
}
