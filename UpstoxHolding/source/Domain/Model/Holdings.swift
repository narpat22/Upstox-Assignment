//
//  Holdings.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//

import Foundation

// MARK: - Holdings
struct Holdings {
    var userHoldings: [UserHolding]
    var totalCurrentValue: Double {
        userHoldings.map { $0.currentValue }.reduce(0, +)
    }
    var totalInvestment: Double {
        userHoldings.map { $0.investmentValue }.reduce(0, +)
    }
    var totalPNL: Double {
        totalCurrentValue - totalInvestment
    }
    var totalTodaysPNL: Double {
        userHoldings.map { $0.todayPNL }.reduce(0, +)
    }
}

