//
//  ViewController.swift
//  ButtonTap
//
//  Created by Krzysztof Jankowski on 27/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private(set) var button: UIButton!
    
    @IBAction func buttonTap() {
        print(">> button was tapped")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

