//
//  InstancePropertyViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class InstancePropertyViewController: UIViewController {
    
    lazy var analitics = Analytics.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analitics.track(event:" viewDidApear - \(type(of: self))")
    }
    
    
    
}
