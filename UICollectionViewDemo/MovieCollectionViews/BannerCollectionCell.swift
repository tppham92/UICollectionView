//
//  BannerCollectionCell.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

class BannerCollectionCell: UICollectionViewCell {

    @IBOutlet weak var bannerImageView: UIImageView!
    
    static let reuseable = "BannerCollectionCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
