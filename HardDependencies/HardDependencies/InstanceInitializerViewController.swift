//
//  InstanceInitializerViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class InstanceInitializerViewController: UIViewController {
    
    private let analitics: Analytics
    
    init(analitics: Analytics = Analytics.shared) {
        self.analitics = analitics
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        analitics.track(event:" viewDidApear - \(type(of: self))")
    }

}
