//
//  UIColor+Extension.swift
//  Resolver Workshop
//
//  Created by Kevin van den Hoek on 28/10/2021.
//

import Foundation
import UIKit

extension UIColor {
    
    static func `for`(_ element: Element) -> UIColor {
        switch element {
        case .background:
            return UIColor(hex: "D3B9BD")
        case .text:
            return UIColor(hex: "FFFFFF")
        }
    }
    
    
    enum Element {
        case background
        case text
    }
}

private extension UIColor {
    
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        var alpha: CGFloat = alpha
        
        let scanner = Scanner(string: hex)
        var hexValue: CUnsignedLongLong = 0
        if scanner.scanHexInt64(&hexValue) {
            if hex.count == 6 {
                red   = CGFloat((hexValue & 0xFF0000) >> 16) / 255.0
                green = CGFloat((hexValue & 0x00FF00) >> 8) / 255.0
                blue  = CGFloat(hexValue & 0x0000FF) / 255.0
            } else if hex.count == 8 {
                alpha   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                red = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                green  = CGFloat((hexValue & 0x0000FF00) >> 8) / 255.0
                blue = CGFloat(hexValue & 0x000000FF) / 255.0
            }
        }
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
