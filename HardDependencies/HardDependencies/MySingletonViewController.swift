//
//  MySingletonViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class MySingletonViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        MySingletonAnalytics.shared.track(event:" viewDidApear - \(type(of: self))")
    }

}
