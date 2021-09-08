//
//  ViewController.swift
//  Navigation
//
//  Created by Krzysztof Jankowski on 01/09/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - Outlets
    @IBOutlet private(set) var codePushButton: UIButton!
    @IBOutlet private(set) var codeModalButton: UIButton!
    @IBOutlet private(set) var sequePushButton: UIButton!
    @IBOutlet private(set) var sequeModalButton: UIButton!
    
    // MARK: - Actions
    
    @IBAction private func pushNextViewController() {
        let nextViewController = CodeNextViewController(labelText: "Pushed from Code")
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @IBAction private func presentModalViewController() {
        let nextViewController = CodeNextViewController(labelText: "Modal from Code")
        self.present(nextViewController, animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        
        case "pushNext"?:
            guard let nextViewController = segue.destination as? SegueNextViewController else { return }
            nextViewController.labelText = "Pushed from Seque"
        case "modalNext"?:
            guard let nextViewController = segue.destination as? SegueNextViewController else { return }
            nextViewController.labelText = "Modal from Seque"
        default:
            return
        }
    }
    


}

