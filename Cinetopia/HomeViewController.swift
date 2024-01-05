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
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Quero começar!", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(.accent, for: .normal)
        button.layer.cornerRadius = 32
        button.backgroundColor = .buttonBackground
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(navSecondScreen), for: .primaryActionTriggered)
        return button
    }()
    
    private lazy var stackContainer: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            logoImage, coupleImage, titleText, startButton
        ])
        stack.spacing = 32
        stack.axis = .vertical
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .accent
        navigationController?.isNavigationBarHidden = true
        addViews()
        setConstrains()
    }
    
    @objc func navSecondScreen() {
        navigationController?.pushViewController(MoviesViewController(), animated: true)
    }
    
    private func addViews() {
        view.addSubview(stackContainer)
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            // StackView
            stackContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64),
            // Logo Cinetopia
//            logoImage.heightAnchor.constraint(equalToConstant: 102),
//            logoImage.widthAnchor.constraint(equalToConstant: 172),
//            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
//            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // Couple Image
//            coupleImage.heightAnchor.constraint(equalToConstant: 289),
//            coupleImage.widthAnchor.constraint(equalToConstant: 302),
//            coupleImage.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 24),
//            coupleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // Title
//            titleText.topAnchor.constraint(equalTo: coupleImage.bottomAnchor, constant: 24),
//            titleText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            titleText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
//            titleText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            // Start Button
            startButton.heightAnchor.constraint(equalToConstant: 68),
            startButton.widthAnchor.constraint(equalToConstant: 228),
//            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            startButton.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 24)
        ])
    }
}
