//
//  UIColor+Extensions.swift
//  WeatherBro
//
//  Created by SangNX on 5/30/20.
//  Copyright © 2020 SangNX. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static func color(_ hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 255.0
        let blue = CGFloat((hex & 0xFF)) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
