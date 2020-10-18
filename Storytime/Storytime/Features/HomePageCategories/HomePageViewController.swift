//
//  HomePageViewController.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/12/20.
//

import UIKit

class HomePageViewController: UICollectionViewController {
    
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
//
//    var categoryNames: [String] = [
//        "History",
//        "Action",
//        "Drama",
//        "Horror",
//        "Fantasy",
//        "Science Fiction",
//        "War",
//        "Detective",
//        "Comedy",
//        "Romance"
//    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        let img = UIImage(named: "gradient")
        navigationController?.navigationBar.setBackgroundImage(img, for: .default)
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
}

extension HomePageViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! HPCollectionViewCell
        cell.categoryImage.image = images[indexPath.item]
        
        
        return cell
    }
    
    
}

