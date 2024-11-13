//
//  HoldingsRepository.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//


protocol HoldingsRepository {
    init(networkManager: NetworkManagerProtocol)
    func getHoldings() async throws -> Holdings
}
