//
//  HomePageViewController.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/12/20.
//

import UIKit

class HomePageController: UICollectionViewController {
    
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
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.setImage((UIImage(named: "plus_button")), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
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
        
        // NavBar Attributes
        let img = UIImage(named: "gradient")
        navigationController?.navigationBar.setBackgroundImage(img, for: .default)
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        
        
    }
    
    //MARK: - Selectors
}







// MARK: - UICollectionViewDelegate

extension HomePageController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! HPCollectionViewCell
        cell.categoryImage.image = images[indexPath.item]
        
        
        return cell
    }
    
    
}

