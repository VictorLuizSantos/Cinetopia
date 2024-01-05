//
//  MoviesViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 04/01/24.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
        title = "Filmes favoritos"
        view.backgroundColor = .accent
        navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    // Como criar TableView -> Primeiro assina os protocolos Delegate e Datasource
        // Coloca no numRows numero de linha conforme array.count
        // Criar o componente tableView no viewcode, registrando ela:
            // tableView.register(TableViewCell.self --> para saber o tipo de celula da tabela)
            // junto com o nome da celula "xxxCell"
        // Coloca no cellForRowAt a celula e de qual tableView ela vai vir:
            // let cell = tableView.dequeue "xxxCell" e ajusta o texto e cor
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        cell.textLabel?.text = movies[indexPath.row]
        cell.backgroundColor = .clear
        return cell
    }
}

#Preview {
    MoviesViewController()
}
