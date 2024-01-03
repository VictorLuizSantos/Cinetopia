//
//  HomeViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 02/01/24.
//

import UIKit

class HomeViewController: UIViewController {
   
    private lazy var titleText: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.textColor = .white
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .accent
        addViews()
        setConstrains()
    }
    
    private func addViews() {
        view.addSubview(titleText)
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleText.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
