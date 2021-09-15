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
    
    var session: URLSessionProtocol = URLSession.shared
    
    @IBAction private func buttonTapped() {
        searchForBooks(terms: "out from boneville")
    }
    
    private(set) var result: [SearchResult] = [] {
        didSet {
            print(result)
        }
    }
    
    private func searchForBooks(terms: String) {
        
        guard let encodedTerms = terms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let url = URL(string: "https://itunes.apple.com/search?" + "media=ebook&term=\(encodedTerms)") else {
            return
        }
        let request = URLRequest(url: url)
        
        dataTask = session.dataTask(with: request) { [weak self] (data: Data?, response: URLResponse?, error: Error?) -> Void in
            guard let self = self else { return }
            
            var decoded: Search?
            var errorMessage: String?
            
            if let error = error {
                errorMessage = error.localizedDescription
            } else if let response = response as? HTTPURLResponse, response.statusCode != 200 {
                errorMessage = "Response" + HTTPURLResponse.localizedString(forStatusCode: response.statusCode)
            } else if let data = data {
                do {
                    decoded = try JSONDecoder().decode(Search.self, from: data)
                } catch {
                    errorMessage = error.localizedDescription
                }
            }
                    
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                
                if let decoded = decoded {
                    self.result = decoded.results
                }
                if let errorMessage = errorMessage {
                    self.showError(errorMessage)
                }
                self.dataTask = nil
                self.button.isEnabled = true
            }
        }
        button.isEnabled = false
        dataTask?.resume()
    }
    
    private func showError(_ message: String) {
        let title = "Network Problem"
        print("\(title): \(message)")
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let okAction = UIAlertAction(
            title: "OK",
            style: .default)
        alert.addAction(okAction)
        alert.preferredAction = okAction
        present(alert, animated: true)
    }
}


protocol URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}

struct Search: Decodable {
    let results: [SearchResult]
}

struct SearchResult: Decodable, Equatable {
    let artistName: String
    let trackName: String
    let averageUserRating: Float
    let genres: [String]
}

