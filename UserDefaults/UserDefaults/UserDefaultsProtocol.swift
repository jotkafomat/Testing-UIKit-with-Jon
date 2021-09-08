//
//  UserDefaultsProtocol.swift
//  UserDefaults
//
//  Created by Krzysztof Jankowski on 08/09/2021.
//

import Foundation

protocol UserDefaultsProtocol {
    func set(_ value: Int, forKey defaultName: String)
    func integer(forKey defaultName: String) -> Int
}
