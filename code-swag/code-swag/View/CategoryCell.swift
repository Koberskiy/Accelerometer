//
//  CategoryCell.swift
//  code-swag
//
//  Created by Yaroslav Koberskyy on 4/18/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categotyTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categotyTitle.text = category.title
    }
}
