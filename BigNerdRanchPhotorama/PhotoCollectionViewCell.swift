//
//  PhotoCollectionViewCell.swift
//  BigNerdRanchPhotorama
//
//  Created by 10.12 on 2018/9/9.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var spinner: UIActivityIndicatorView!
    
    // The activity indicator view should only spin when the cell is not displaying an image
    func update(with image: UIImage?) {
        if let imageToDisplay = image {
            spinner.stopAnimating()
            imageView.image = imageToDisplay
        } else {
            spinner.startAnimating()
            imageView.image = nil
        }
    }
    // When the cell is first created
    override func awakeFromNib() {
        super.awakeFromNib()
        update(with: nil)
    }
    // When the cell is getting reused
    override func prepareForReuse() {
        super.prepareForReuse()
        
        update(with: nil)
    }
}
