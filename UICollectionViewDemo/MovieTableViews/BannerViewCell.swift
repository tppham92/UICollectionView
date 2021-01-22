//
//  BannerViewCell.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

class BannerViewCell: UITableViewCell {
    
    static var banners: [Banners] = [
        Banners(),
        Banners(),
        Banners()
    ]
    
    static let reuseable = "BannerViewCell"
    
    @IBOutlet weak var bannerCollection: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        bannerCollection.dataSource = self
        bannerCollection.delegate = self
        
        bannerCollection.register(UINib(nibName: BannerCollectionCell.reuseable, bundle: nil), forCellWithReuseIdentifier: BannerCollectionCell.reuseable)
    }
}

extension BannerViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BannerViewCell.banners.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let bannerCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCollectionCell.reuseable, for: indexPath) as? BannerCollectionCell else {
            return UICollectionViewCell()
        }
        return bannerCollectionCell
    }
}

extension BannerViewCell: UICollectionViewDelegate {
    
}

extension BannerViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 160)
    }
}
