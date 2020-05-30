//
//  Utils.swift
//  WeatherBro
//
//  Created by SangNX on 5/30/20.
//  Copyright © 2020 SangNX. All rights reserved.
//

import Foundation

class Utilities: NSObject {
    class func convertMonthVnes(month: Int? = nil) -> String {
        if month != nil {
            let firstChar = "Tháng "
            switch month {
            case 1:
                return firstChar + "Một"
            case 2:
                return firstChar + "Hai"
            case 3:
                return firstChar + "Ba"
            case 4:
                return firstChar + "Bốn"
            case 5:
                return firstChar + "Năm"
            case 6:
                return firstChar + "Sáu"
            case 7:
                return firstChar + "Bảy"
            case 8:
                return firstChar + "Tám"
            case 9:
                return firstChar + "Chín"
            case 10:
                return firstChar + "Mười"
            case 11:
                return firstChar + "Mười một"
            default:
                return firstChar + "Mười hai"
            }
            
        }
        return ""
    }
}
