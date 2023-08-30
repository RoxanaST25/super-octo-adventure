//
//  BorderButtom.swift
//  super-octo-adventure
//
//  Created by Main User on 2023-07-26.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
