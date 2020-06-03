//
//  ViewController.swift
//  MFC-ifyme-capn
//
//  Created by Yaroslav Koberskyy on 6/2/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class Controller: UIViewController {

    @IBOutlet weak var iphoneNameLabel: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appleProduct = AppleProduct(name: "iPhone X", color: "Space Gray", price: 999.99)
        
        iphoneNameLabel.text = appleProduct.name
        iphoneColorLabel.text = "in \(appleProduct.color)"
        iphonePriceLabel.text = "$\(appleProduct.price)"
        
        let samsungProduct = SamsungProduct(name: "S8", color: "Blue", price: 500, operationSystem: "Android")
        iphoneNameLabel.text = samsungProduct.name
        iphoneColorLabel.text = samsungProduct.color
        iphonePriceLabel.text = "$\(samsungProduct.price)"
        
        let label = UILabel(frame: CGRect(x:60,y:0, width:300, height:100))
        label.textAlignment = NSTextAlignment.center
        label.text = "New label"
        self.view.addSubview(label)
        
        let custom = CustomLabel(frame: CGRect(x: 90, y: 90, width: 200, height: 50))
        custom.awakeFromNib()
        self.view.addSubview(custom)
    
    }
}

