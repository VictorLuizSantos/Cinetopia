//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 04/01/24.
//

import UIKit

class MoviesViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .accent
        navigationController?.isNavigationBarHidden = false
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        title = "Filmes populares"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationItem.setHidesBackButton(true, animated: true)
    }
}
