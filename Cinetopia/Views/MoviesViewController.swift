//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 04/01/24.
//

import UIKit

class MoviesViewController: UIViewController {
    
    let movies = ["Ace Ventura", "Batman", "Cruella", "Minions"]
    
    // MARK: - UI Components
    
    private lazy var moviesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "movieCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addviews()
        setContrains()
        setNavigationBar()
    }
    
    // MARK: - Class Methods
    
    private func addviews() {
        view.addSubview(moviesTableView)
    }
    
    private func setContrains() {
        NSLayoutConstraint.activate([
            moviesTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            moviesTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            moviesTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            moviesTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setNavigationBar() {
        title = "Filmes favoritos"
        view.backgroundColor = .accent
        navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
    }
}
