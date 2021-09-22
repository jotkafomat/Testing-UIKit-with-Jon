//
//  TestHelpers.swift
//  ViewControllerTests
//
//  Created by Krzysztof Jankowski on 22/09/2021.
//

import Foundation
import UIKit

extension UITextContentType: CustomStringConvertible {
    public var description: String {
        rawValue
    }
}

extension UITextAutocorrectionType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .default:
            return "default"
        case .no:
            return "no"
        case .yes:
            return "yes"
        @unknown default:
            fatalError("Unknown UITextAutocorrectionType")
        }
    }
}

