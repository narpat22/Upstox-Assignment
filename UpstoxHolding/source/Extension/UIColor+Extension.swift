//
//  UIColor+Extension.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 13/11/24.
//

import UIKit

extension UIColor {
    enum Text {
        static let charcoal: UIColor = UIColor.charcoal
        static let grey: UIColor = UIColor.gray
        static let black: UIColor = UIColor.black
        static let profit: UIColor = UIColor.profitGreen
        static let loss: UIColor = UIColor.lossRed
    }

    private static let charcoal: UIColor = UIColor(red: 22 / 255.0, green: 22 / 255.0, blue: 22 / 255.0, alpha: 1)
    private static let profitGreen: UIColor = UIColor(red: 0.0, green: 0.6, blue: 0.0, alpha: 1.0)
    private static let lossRed: UIColor = UIColor(red: 0.8, green: 0.0, blue: 0.0, alpha: 1.0)
}
