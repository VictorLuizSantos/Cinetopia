//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 04/01/24.
//

import UIKit

class MoviesViewController: UIViewController, UITabBarDelegate, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "moviesCell")
        cell?.textLabel?.text = movies[indexPath.row]
        return cell!
    }
    
    
    let movies = ["Ace Ventura", "Batman", "Cruella", "Minions"]
    
    // MARK: - UI Components
    
    private lazy var moviesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "moviesCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        setNavigationBar()
        addviews()
        setContrains()
    }
    
    // MARK: - Methods
    
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
//        navigationController?.navigationBar.isHidden = false
        title = "Filmes favoritos"
//        navigationItem.title = "Filmes favoritos"
        view.backgroundColor = .accent
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationItem.setHidesBackButton(true, animated: true)
    }
}

#Preview {
    MoviesViewController()
}
