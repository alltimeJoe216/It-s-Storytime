//
//  PopularPageController.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/18/20.
//

import Foundation
import UIKit

class PopularPageController: UIViewController {
    
    //MARK: - Properties
    var imageView: UIImage = UIImage(named: "stockphotoforstorytime")!
    var storyTitle: String = "An Old Man Lived in the Village"
    var bodyText: String = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    
    
    //MARK: - IBOutlets
    @IBOutlet var collectionView: UICollectionView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    //MARK: - Selectors
    
}

extension PopularPageController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularPageCollectionViewCell.reuseIdentifier, for: indexPath) as! PopularPageCollectionViewCell
        cell.storyTitleLabel.text = self.storyTitle
        cell.storyImageView.image = self.imageView
        cell.storyBodyPreview.text = self.bodyText
        
        
        return cell
    }
    
    
}
