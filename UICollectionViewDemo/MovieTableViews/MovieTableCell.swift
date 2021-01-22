//
//  MovieTableCell.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

class MovieTableCell: UITableViewCell {
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    static let reuseable = "MoviesTabelCell"
    
    static var movies: [Movies] = [
        Movies("Movie 1"),
        Movies("Movie 2"),
        Movies("Movie 3"),
        Movies("Movie 4"),
        Movies("Movie 5"),
        Movies("Movie 6"),
        Movies("Movie 7"),
        Movies("Movie 8")
    ]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
        movieCollectionView.register(UINib(nibName: MovieCollectionCell.reuseable, bundle: nil),
                                     forCellWithReuseIdentifier: MovieCollectionCell.reuseable)
    }
}

extension MovieTableCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MovieTableCell.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let movieCell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionCell.reuseable, for: indexPath) as? MovieCollectionCell else {
            return UICollectionViewCell()
        }
        return movieCell
    }
}

extension MovieTableCell: UICollectionViewDelegate {
    
}

extension MovieTableCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 240)
    }
}
