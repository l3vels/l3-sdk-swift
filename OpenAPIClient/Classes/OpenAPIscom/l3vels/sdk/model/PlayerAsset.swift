//
// PlayerAsset.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.PlayerAsset")
public typealias PlayerAsset = OpenAPIClientAPI.PlayerAsset

extension OpenAPIClientAPI {

public struct PlayerAsset: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the Player asset entity. */
    public var id: String
    /** The amount of the specific asset that the player has. */
    public var amount: Double
    /** The unique identifier of the player that the asset is associated with. */
    public var playerId: String
    /** The unique identifier of the asset that the asset is associated with. */
    public var assetId: String
    /** The unique identifier of the collection that the Player asset is associated with. */
    public var collectionId: String
    /** The unique identifier of the account that the Player belongs to. */
    public var accountId: Double
    /** The unique identifier of the project that the Player is associated with. This allows developers to organize their players by project and helps with tracking and reporting. */
    public var projectId: String
    /** The date when the player was created. */
    public var createdOn: Date
    /** The date when the player was last modified. */
    public var modifiedOn: Date
    /** The Id of the user who created the player. */
    public var createdBy: Double
    /** The Id of the user who last modified the player. */
    public var modifiedBy: Double

    public init(id: String, amount: Double, playerId: String, assetId: String, collectionId: String, accountId: Double, projectId: String, createdOn: Date, modifiedOn: Date, createdBy: Double, modifiedBy: Double) {
        self.id = id
        self.amount = amount
        self.playerId = playerId
        self.assetId = assetId
        self.collectionId = collectionId
        self.accountId = accountId
        self.projectId = projectId
        self.createdOn = createdOn
        self.modifiedOn = modifiedOn
        self.createdBy = createdBy
        self.modifiedBy = modifiedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case amount
        case playerId = "player_id"
        case assetId = "asset_id"
        case collectionId = "collection_id"
        case accountId = "account_id"
        case projectId = "project_id"
        case createdOn = "created_on"
        case modifiedOn = "modified_on"
        case createdBy = "created_by"
        case modifiedBy = "modified_by"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(amount, forKey: .amount)
        try container.encode(playerId, forKey: .playerId)
        try container.encode(assetId, forKey: .assetId)
        try container.encode(collectionId, forKey: .collectionId)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(projectId, forKey: .projectId)
        try container.encode(createdOn, forKey: .createdOn)
        try container.encode(modifiedOn, forKey: .modifiedOn)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encode(modifiedBy, forKey: .modifiedBy)
    }
}

}