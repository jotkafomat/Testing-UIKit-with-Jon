//
//  CodeBasedViewController.swift
//  LoadViewControllers
//
//  Created by Krzysztof Jankowski on 16/08/2021.
//

import UIKit

class CodeBasedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(">> create views here")
    }
    private let data: String
    
    init(data: String) {
        self.data = data
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
