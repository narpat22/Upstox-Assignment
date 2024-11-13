//
//  HoldingsRepositoryImpl.swift
//  UpstoxHolding
//
//  Created by Pritesh Singhvi on 12/11/24.
//

import Foundation

struct HoldingsRepositoryImpl: HoldingsRepository {
    private let networkManager: NetworkManagerProtocol

    init(networkManager: NetworkManagerProtocol) {
        self.networkManager = networkManager
    }

    func getHoldings() async throws -> Holdings {
        let endPoint = HoldingsEndpoint.holdings
        let response = try await networkManager.execute(endpoint: endPoint,
                                                        responseModel: DataDTO.self)
        return response.toDomain()
    }
}
