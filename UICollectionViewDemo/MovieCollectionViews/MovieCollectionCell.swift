//
//  MovieCollectionCell.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

class MovieCollectionCell: UICollectionViewCell {

    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    static let reuseable = "MovieCollectionCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        movieImageView.layer.cornerRadius = 15.0
    }
    
    func config(_ movie: Movies) {
        self.movieTitle.text = movie.title
        self.movieImageView.image = UIImage(named: movie.image)
    }
}
