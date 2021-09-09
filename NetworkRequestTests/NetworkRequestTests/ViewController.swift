//
//  ViewController.swift
//  NetworkRequestTests
//
//  Created by Krzysztof Jankowski on 09/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet private(set) var button: UIButton!
    private var dataTask: URLSessionDataTask?
    var session: URLSession = URLSession.shared
    
    @IBAction private func buttonTapped() {
        searchForBooks(terms: "out from bonnevile")
    }
    
    private func searchForBooks(terms: String) {
        
        guard let encodedTerms = terms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "https://itunes.apple.com/search?" + "media=ebook&term=\(encodedTerms)") else {
            return
        }
        let request = URLRequest(url: url)
        
        dataTask = session.dataTask(with: request) { [weak self] (data: Data?, response: URLResponse?, error: Error?) -> Void in
            guard let self = self else { return }
            let decoded = String(data: data ?? Data(), encoding: .utf8)
            
            print("response: \(String(describing: response))")
            print("data: \(String(describing: decoded))")
            print("error: \(String(describing: error))")
            
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.dataTask = nil
                self.button.isEnabled = true
            }
        }
        button.isEnabled = false
        dataTask?.resume()
    }
    
}

