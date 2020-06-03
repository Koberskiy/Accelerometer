//
//  CustomPrettyView.swift
//  MFC-ifyme-capn
//
//  Created by Yaroslav Koberskyy on 6/2/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit

class CustomPrettyView: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.borderWidth = 5
    }
}
