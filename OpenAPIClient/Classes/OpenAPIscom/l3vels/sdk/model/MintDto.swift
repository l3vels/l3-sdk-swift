//
// MintDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.MintDto")
public typealias MintDto = OpenAPIClientAPI.MintDto

extension OpenAPIClientAPI {

public struct MintDto: Codable, JSONEncodable, Hashable {

    /** Contract ID */
    public var contractId: String?
    /** Game/project ID. Example: Call of Duty */
    public var projectId: String
    /** Collection ID to use. Example: Characters, Weapons, etc. */
    public var collectionId: String
    /** Player address to mint token to. You can provide player ID or player address */
    public var playerAddress: String?
    /** Player ID to mint to. You can provide player ID or player address */
    public var playerId: String?
    public var asset: MintDtoAsset

    public init(contractId: String? = nil, projectId: String, collectionId: String, playerAddress: String? = nil, playerId: String? = nil, asset: MintDtoAsset) {
        self.contractId = contractId
        self.projectId = projectId
        self.collectionId = collectionId
        self.playerAddress = playerAddress
        self.playerId = playerId
        self.asset = asset
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case contractId = "contract_id"
        case projectId = "project_id"
        case collectionId = "collection_id"
        case playerAddress = "player_address"
        case playerId = "player_id"
        case asset
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(contractId, forKey: .contractId)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(collectionId, forKey: .collectionId)
        try container.encodeIfPresent(playerAddress, forKey: .playerAddress)
        try container.encodeIfPresent(playerId, forKey: .playerId)
        try container.encode(asset, forKey: .asset)
    }
}

}