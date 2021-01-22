//
//  HomeView.swift
//  UICollectionViewDemo
//
//  Created by TPPham on 1/22/21.
//

import UIKit

class HomeView: UIViewController {
    
    @IBOutlet weak var movieTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        movieTableView.separatorStyle = .none
        movieTableView.dataSource = self
        movieTableView.delegate = self
        movieTableView.register(UINib(nibName: BannerViewCell.reuseable, bundle: nil), forCellReuseIdentifier: BannerViewCell.reuseable)
        movieTableView.register(UINib(nibName: MovieTableCell.reuseable, bundle: nil), forCellReuseIdentifier: MovieTableCell.reuseable)
    }
}

extension HomeView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            guard let bannerCell = tableView.dequeueReusableCell(withIdentifier: BannerViewCell.reuseable, for: indexPath) as? BannerViewCell else {
                return UITableViewCell()
            }
            return bannerCell
            
        } else {
            guard let movieCell = tableView.dequeueReusableCell(withIdentifier: MovieTableCell.reuseable, for: indexPath) as? MovieTableCell else {
                return UITableViewCell()
            }
            return movieCell
        }
    }
}

extension HomeView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 190
        }
        return 240
    }
    
}
