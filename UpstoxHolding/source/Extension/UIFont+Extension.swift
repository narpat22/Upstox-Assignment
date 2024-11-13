//
//  UIFont+Extension.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 13/11/24.
//

import UIKit

extension UIFont {
    enum CellHeading {
        static var regular: UIFont = UIFont.boldSystemFont(ofSize: 20)
        static var medium: UIFont = UIFont.systemFont(ofSize: 18)
    }

    enum CellSubHeading {
        static var regular: UIFont = UIFont.preferredFont(forTextStyle: .caption2)
    }
    enum BottomHeading {
        static var regular: UIFont = UIFont.systemFont(ofSize: 15, weight: .medium)
    }
}
