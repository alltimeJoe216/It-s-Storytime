//
//  PopularPageCollectionViewCell.swift
//  Storytime
//
//  Created by Joseph Veverka on 10/18/20.
//

import UIKit

class PopularPageCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier: String = "PopularPageCell"
    
    @IBOutlet var storyTitleLabel: UILabel!
    @IBOutlet var storyBodyPreview: UILabel!
    @IBOutlet var storyImageView: UIImageView!

}
