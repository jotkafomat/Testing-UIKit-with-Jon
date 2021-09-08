//
//  ClosureInitializerViewController.swift
//  HardDependencies
//
//  Created by Krzysztof Jankowski on 18/08/2021.
//

import UIKit

class ClosureInitializerViewController: UIViewController {

    private let makeAnalitics: () -> Analytics
    
    init(makeAnalitics: @escaping () -> Analytics = { Analytics.shared }) {
        self.makeAnalitics = makeAnalitics
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
        makeAnalitics().track(event:" viewDidApear - \(type(of: self))")
    }

}
