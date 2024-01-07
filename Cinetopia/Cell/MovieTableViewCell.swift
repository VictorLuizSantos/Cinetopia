//
//  MovieTableViewCell.swift
//  Cinetopia
//
//  Created by Victor Luiz on 06/01/24.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // MARK: - Cell Components
    
    private lazy var moviePoster: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12.0
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var movieTitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var movieReleaseDate: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white.withAlphaComponent(0.75)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Cell Methods
    
    private func addSubviews() {
        addSubview(moviePoster)
        addSubview(movieTitle)
        addSubview(movieReleaseDate)
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            moviePoster.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            moviePoster.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            moviePoster.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            moviePoster.widthAnchor.constraint(equalToConstant: 100),
            
            movieTitle.centerYAnchor.constraint(equalTo: moviePoster.centerYAnchor, constant: -16),
            movieTitle.leadingAnchor.constraint(equalTo: moviePoster.trailingAnchor, constant: 16),
            movieTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            movieReleaseDate.topAnchor.constraint(equalTo: movieTitle.bottomAnchor, constant: 8),
            movieReleaseDate.leadingAnchor.constraint(equalTo: moviePoster.trailingAnchor, constant: 16)
        ])
    }
    
    func cellConfiguration (movie: Movie) {
        moviePoster.image = UIImage(named: movie.image)
        movieTitle.text = movie.title
        movieReleaseDate.text = "Lançamento: \(movie.releaseDate)"
    }
    
    // MARK: - Class Methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews()
        setConstrains()
        backgroundColor = .accent
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#Preview {
    MovieTableViewCell()
}
