//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by Krzysztof Jankowski on 01/09/2021.
//

import UIKit

class SegueNextViewController: UIViewController {
    
    var labelText: String?
    
    @IBOutlet private(set) var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
    }


}
