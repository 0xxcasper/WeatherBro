//
//  AppConstant.swift
//  WeatherBro
//
//  Created by SangNX on 5/30/20.
//  Copyright © 2020 SangNX. All rights reserved.
//

import Foundation
import UIKit

struct AppConstant {
    static let SCREEN_SIZE: CGRect = UIScreen.main.bounds
    static let SREEEN_WIDTH = SCREEN_SIZE.width
    static let SCREEN_HEIGHT = SCREEN_SIZE.height
    static let STATUS_BAR_BOTTOM = SCREEN_HEIGHT >= 812 || SREEEN_WIDTH >= 812 ? CGFloat(44) : CGFloat(28)
    static let STATUS_BAR_TOP = SCREEN_HEIGHT >= 812 ? CGFloat(44) : CGFloat(20)
    static let TOOL_BAR_HEIGHT = CGFloat(44)
    static let NAVI_BAR_HEIGHT = CGFloat(44)
}



let WEATHER_URL = "https://686online.site/weather/"
