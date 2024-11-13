//
//  UIStackView+Extension.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 13/11/24.
//

import UIKit

extension UIStackView {
    func setup(_ axis: NSLayoutConstraint.Axis = .vertical,
               _ spacing: CGFloat = 8) {
        translatesAutoresizingMaskIntoConstraints = false
        self.axis = axis
        self.spacing = spacing
        alignment = .fill
    }

    func removeAllArrangedSubviews() {
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
}
