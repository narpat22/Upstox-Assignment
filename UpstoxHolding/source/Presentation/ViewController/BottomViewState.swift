//
//  BottomViewState.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 13/11/24.
//

import Foundation

enum BottomViewState {
    case collapsed, expanded
    mutating func toggle() {
        self = self == .collapsed ? .expanded : .collapsed
    }
    var viewHeight: CGFloat {
        switch self {
        case .collapsed:
            return 40
        case .expanded:
            return 150
        }
    }
    
    var imageName: String {
        switch self {
        case .collapsed:
            return "upArrow"
        case .expanded:
            return "downArrow"
        }
    }
}
