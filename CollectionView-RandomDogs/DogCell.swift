//
//  DogCell.swift
//  CollectionView-RandomDogs
//
//  Created by Matthew Ramos on 1/14/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit
import ImageKit

class DogCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    public func configureCell(with dogImage: DogImage) {
        imageView.getImage(with: dogImage) { [weak self] (result) in
            switch result {
            case .failure:
                DispatchQueue.main.async {
                    self?.imageView.image = UIImage(systemName: "exclamationmark-triangle")
                }
            case .success(let image):
                DispatchQueue.main.async {
                    self?.imageView.image = image
                }
            }
        }
    }
    
}
