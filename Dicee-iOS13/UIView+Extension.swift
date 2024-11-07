//
//  UIView+Extension.swift
//  Dicee-iOS13
//
//  Created by Nijat Hamid on 11/7/24.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import UIKit

extension UIView{
     func setupImageView(radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}
