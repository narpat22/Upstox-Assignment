//
//  Double+Extension.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 13/11/24.
//


extension Double {
    var rupeesValue: String {
        var format = "₹%.2f"
        if isNegative {
            format = "-₹%.2f"
        }
        return String(format: format, abs(self))
    }

    var isNegative: Bool {
        self < 0
    }
}