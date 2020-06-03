//
//  Category.swift
//  code-swag
//
//  Created by Yaroslav Koberskyy on 4/18/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String // public - get. private - set
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
