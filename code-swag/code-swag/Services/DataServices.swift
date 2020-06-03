//
//  DataServices\.swift
//  code-swag
//
//  Created by Yaroslav Koberskyy on 4/18/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import Foundation

class DataServices {
    static let instance = DataServices()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
         Product(title:"Devslopers hat", price: "$12", imageName: "hat01.png"),
         Product(title:"Devslopers hat", price: "$18", imageName: "hat02.png"),
         Product(title:"Devslopers hat", price: "$20", imageName: "hat03.png"),
         Product(title:"Devslopers hat", price: "$5", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title:"Devslopers hoodie", price: "$34", imageName: "hoodie01.png"),
        Product(title:"Devslopers hoodie", price: "$26", imageName: "hoodie02.png"),
        Product(title:"Devslopers hoodie", price: "$66", imageName: "hoodie03.png"),
        Product(title:"Devslopers hoodie", price: "$24", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title:"Devslopers shirt", price: "$64", imageName: "shirt01.png"),
        Product(title:"Devslopers shirt", price: "$88", imageName: "shirt02.png"),
        Product(title:"Devslopers shirt", price: "$34", imageName: "shirt03.png"),
        Product(title:"Devslopers shirt", price: "$89", imageName: "shirt04.png")
    ]
    
    private let DigitalGoods = [Product]()
    
    func getCategory() ->[Category] {
        return categories
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirt()
        case "HATS":
           return getHats()
        case "HOODIES":
           return getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
           return getShirt()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirt() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return DigitalGoods
    }
}
