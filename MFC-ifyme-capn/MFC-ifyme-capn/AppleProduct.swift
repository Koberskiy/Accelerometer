//
//  AppleProduct.swift
//  MFC-ifyme-capn
//
//  Created by Yaroslav Koberskyy on 6/2/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import Foundation

class AppleProduct {
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    
    init(name:String, color:String, price:Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}

//let appleProduct = AppleProduct(name: "iPhone X", color: "Space gray", price: 999.99)
