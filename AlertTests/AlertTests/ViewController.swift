//
//  ViewController.swift
//  AlertTests
//
//  Created by Krzysztof Jankowski on 31/08/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet private(set) var button: UIButton!
    @IBAction private func buttonTap() {
        let alert = UIAlertController(
            title: "Do The Right Thing",
            message: "Let us know if you want to do the thing",
            preferredStyle: .alert
        )
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: .cancel) { _ in
            print(">>Cancel")
        }
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print(">>OK")
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.preferredAction = okAction
        
        present(alert, animated: true)
    }


}

