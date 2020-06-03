//
//  SamsungProduct.swift
//  MFC-ifyme-capn
//
//  Created by Yaroslav Koberskyy on 6/3/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import Foundation

class SamsungProduct {
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    public private(set) var operationSystem: String

    init(name:String, color:String, price:Double, operationSystem:String) {
        self.name = name
        self.color = color
        self.price = price
        self.operationSystem = operationSystem
    }
}
