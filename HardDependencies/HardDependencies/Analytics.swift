//
//  Analytics.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">>" + event)
        
        if self !== Analytics.shared {
            print("not a Analytics sigleton")
        }
    }
}
