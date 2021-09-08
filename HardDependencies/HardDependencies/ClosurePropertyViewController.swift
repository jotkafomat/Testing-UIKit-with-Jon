//
//  ClosurePropertyViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class ClosurePropertyViewController: UIViewController {
    
    var makeAnalitics: () -> Analytics = { Analytics.shared }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        makeAnalitics().track(event:" viewDidApear - \(type(of: self))")
    }
    


}
