//
//  HomePageViewController.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/12/20.
//

import UIKit

class HomePageController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    // MARK: - Properties
    // Dummy Data
    var images: [UIImage] = [
        UIImage(named: "ActionPic")!,
        UIImage(named: "ComedyPic")!,
        UIImage(named: "CrimePic")!,
        UIImage(named: "DramaPic")!,
        UIImage(named: "ExoticPic")!,
        UIImage(named: "HistoryPic")!,
        UIImage(named: "HorrorPic")!,
        UIImage(named: "SciFiPic")!
    ]
    
    //MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - Helpers
    
    @objc func actionButtonTapped() {
        print("Do some actions here (new story?)")
    }
    
    func configureUI() {
        
        //CV DS&Delegate
        collectionView.delegate = self
        collectionView.dataSource = self

        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedString.Key.font:UIFont(name: "Mithella-Regular", size: 12)]
        appearance.setTitleTextAttributes(attributes as [NSAttributedString.Key : Any], for: .normal)
        
        
        
    }
    
    //MARK: - Selectors
}

// MARK: - UICollectionViewDelegate

extension HomePageController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.reuseIdentifier, for: indexPath) as! CategoriesCollectionViewCell
        cell.categoryImage.image = images[indexPath.item]
        
        
        return cell
    }
}

