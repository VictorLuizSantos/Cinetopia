//
//  HomeViewController.swift
//  Cinetopia
//
//  Created by Victor Luiz on 02/01/24.
//

import UIKit

class HomeViewController: UIViewController {
   
    // MARK: - UI Components
    
    private lazy var logoImage: UIImageView = {
        let image = UIImageView(image: UIImage.logo)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var coupleImage: UIImageView = {
        let image = UIImageView(image: UIImage.couple)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var titleText: UILabel = {
        let label = UILabel()
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .accent
        addViews()
        setConstrains()
    }
    
    private func addViews() {
        view.addSubview(logoImage)
        view.addSubview(coupleImage)
        view.addSubview(titleText)
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            // Logo Cinetopia
            logoImage.heightAnchor.constraint(equalToConstant: 102),
            logoImage.widthAnchor.constraint(equalToConstant: 172),
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 79),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // Couple Image
            coupleImage.heightAnchor.constraint(equalToConstant: 289),
            coupleImage.widthAnchor.constraint(equalToConstant: 302),
            coupleImage.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 24),
            coupleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // Title
            titleText.topAnchor.constraint(equalTo: coupleImage.bottomAnchor, constant: 24),
            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
        ])
    }
}
