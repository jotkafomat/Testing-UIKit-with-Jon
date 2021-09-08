//
//  MyClass.swift
//  LifeCycle
//
//  Created by Krzysztof Jankowski on 06/05/2021.
//

import Foundation

class MyClass {
    
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() #\(instance)")
    }
    
    deinit {
        print(">> MyClass.deinit #\(instance)")
    }
    
    
    func methodOne() {
        print(">> method One")
    }
    
    func methodTwo() {
        print(">> method Two")
    }
}
