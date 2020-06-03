//
//  ProductCell.swift
//  code-swag
//
//  Created by Yaroslav Koberskyy on 5/4/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
