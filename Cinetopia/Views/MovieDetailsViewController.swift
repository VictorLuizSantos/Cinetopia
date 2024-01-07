//
//  MovieDetailsViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 07/01/24.
//

import UIKit

class MovieDetailsViewController: UITableViewController {
    
    // MARK: - Atributs
    
    private var movie: Movie
    
    // MARK: - UI Components
    
    private lazy var movieTitle: UILabel = {
        let label = UILabel()
        label.text = movie.title
        label.textColor = .white
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var moviePost: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: movie.image)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 12
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var movieRate: UILabel = {
        let label = UILabel()
        label.text = "Classificação dos usuários: \(movie.rate)"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var movieSynopsis: UILabel = {
        let label = UILabel()
        label.text = movie.synopsis
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .justified
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializer
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .accent
//        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        addSubviews()
        setConstrains()
    }
    
    // MARK: - Class Methods
    
    private func addSubviews() {
        view.addSubview(movieTitle)
        view.addSubview(moviePost)
        view.addSubview(movieRate)
        view.addSubview(movieSynopsis)
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            movieTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            movieTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            movieTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            movieTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            moviePost.topAnchor.constraint(equalTo: movieTitle.bottomAnchor, constant: 32),
            moviePost.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            moviePost.widthAnchor.constraint(equalToConstant: 175),
            moviePost.heightAnchor.constraint(equalToConstant: 235),
            
            movieRate.topAnchor.constraint(equalTo: moviePost.bottomAnchor, constant: 24),
            movieRate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            movieRate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            movieSynopsis.topAnchor.constraint(equalTo: movieRate.bottomAnchor, constant: 40),
            movieSynopsis.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            movieSynopsis.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
}
