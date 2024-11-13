//
//  GetHoldingUseCase.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//

import Foundation

protocol GetHoldingUseCase {
    init(repository: HoldingsRepository)
    func execute() async throws -> Holdings
}

struct GetHoldingUseCaseImpl: GetHoldingUseCase {
    private let repository: HoldingsRepository

    init(repository: HoldingsRepository) {
        self.repository = repository
    }

    func execute() async throws -> Holdings {
        try await repository.getHoldings()
    }
}
