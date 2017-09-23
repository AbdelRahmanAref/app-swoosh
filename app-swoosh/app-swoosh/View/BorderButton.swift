//
//  BorderButton.swift
//  app-swoosh
//
//  Created by AbdelRahman Aref on 9/20/17.
//  Copyright © 2017 AbdelRahman Aref. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
