//
//  CodeNextViewController.swift
//  Navigation
//
//  Created by Krzysztof Jankowski on 01/09/2021.
//

import UIKit

class CodeNextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        activateEqualConstraints(.centerX, forItem: label, toItem: view)
        activateEqualConstraints(.centerY, forItem: label, toItem: view)
    }
    
    let label = UILabel()
    
    init(labelText: String) {
        label.text = labelText
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func activateEqualConstraints(
        _ attribute: NSLayoutConstraint.Attribute,
        forItem: UIView,
        toItem: UIView
    ) {
        NSLayoutConstraint(
            item: forItem,
            attribute: attribute,
            relatedBy: .equal,
            toItem: toItem,
            attribute: attribute,
            multiplier: 1,
            constant: 0)
            .isActive = true
    }
    
}
