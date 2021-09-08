//
//  ViewController.swift
//  UserDefaults
//
//  Created by Krzysztof Jankowski on 08/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var userDefaults: UserDefaultsProtocol = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        count = userDefaults.integer(forKey: "count")
    }
    
    @IBOutlet private(set) var counterLabel: UILabel!
    @IBOutlet private(set) var incrementButton: UIButton!
    
    private var count = 0 {
        didSet {
            counterLabel.text = "\(count)"
            userDefaults.set(count, forKey: "count")
        }
    }
    
    @IBAction private func incrementButtonTapped() {
        count += 1
    }

}

