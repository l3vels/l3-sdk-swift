//
// MintBatchDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.MintBatchDto")
public typealias MintBatchDto = OpenAPIClientAPI.MintBatchDto

extension OpenAPIClientAPI {

public struct MintBatchDto: Codable, JSONEncodable, Hashable {

    /** Project Id */
    public var projectId: String
    /** Collection Id */
    public var collectionId: String
    /** Player address to mint token to */
    public var playerAddress: String
    /** Player ID to mint to. You can provide this or player_address */
    public var playerId: String
    /** Array of tokens to mint */
    public var assets: [String]

    public init(projectId: String, collectionId: String, playerAddress: String, playerId: String, assets: [String]) {
        self.projectId = projectId
        self.collectionId = collectionId
        self.playerAddress = playerAddress
        self.playerId = playerId
        self.assets = assets
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case projectId = "project_id"
        case collectionId = "collection_id"
        case playerAddress = "player_address"
        case playerId = "player_id"
        case assets
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(collectionId, forKey: .collectionId)
        try container.encode(playerAddress, forKey: .playerAddress)
        try container.encode(playerId, forKey: .playerId)
        try container.encode(assets, forKey: .assets)
    }
}

}
