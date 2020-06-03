//
//  CustomLabel.swift
//  MFC-ifyme-capn
//
//  Created by Yaroslav Koberskyy on 6/3/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    override func awakeFromNib() {
        layer.cornerRadius = 15
        layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        layer.borderWidth = 6
        textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        textAlignment = NSTextAlignment.center
        text = "CUSTOM LABEL"
    }
}
