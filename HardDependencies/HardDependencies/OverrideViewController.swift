//
//  OverrideViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class OverrideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        analitics().track(event:" viewDidApear - \(type(of: self))")
    }
     func analitics() -> Analytics {
        Analytics.shared
    }

}
