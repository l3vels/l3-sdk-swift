//
// Asset.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.Asset")
public typealias Asset = OpenAPIClientAPI.Asset

extension OpenAPIClientAPI {

public struct Asset: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the asset entity. */
    public var id: String
    /** The token id of the asset. */
    public var tokenId: Double
    /** The name of the asset. */
    public var name: String
    /** ID of the parent asset. */
    public var parentId: String
    /** Custom properties of the asset. */
    public var properties: [String]
    /** Custom attributes of the asset. */
    public var attributes: AnyCodable
    /** Achievements of the asset. */
    public var achievements: [String]
    /** Rewards of the asset. */
    public var rewards: [String]
    /** The description of the asset. */
    public var description: String
    /** The status of the asset. */
    public var status: String
    /** The price of the asset. */
    public var price: Double
    /** The supply of the asset. */
    public var supply: Double
    /** The minted amount of the asset. */
    public var mintedAmount: Double
    /** The asset type. Can be main or nested. */
    public var assetType: String
    /** The asset URL. */
    public var assetUrl: String
    /** Additional images associated with the asset, such as screenshots or promotional images. */
    public var medias: [String]
    /** The main or featured image associated with the asset. You can set it from the Dashboard as main image. */
    public var mainMedia: String
    /** The unique identifier of the account that the Collection belongs to. */
    public var accountId: String
    /** The unique identifier of the game that the asset is associated with. This allows developers to organize their assets by game and helps with tracking and reporting. */
    public var gameId: String
    /** The unique identifier of the collection that the asset is associated with. This allows developers to organize their collections by game and helps with tracking and reporting. */
    public var collectionId: String
    /** The date when the collection was created. */
    public var createdOn: Date
    /** The date when the collection was last modified. */
    public var modifiedOn: Date
    /** The Id of the user who created the collection. */
    public var createdBy: String
    /** The Id of the user who last modified the collection. */
    public var modifiedBy: String

    public init(id: String, tokenId: Double, name: String, parentId: String, properties: [String], attributes: AnyCodable, achievements: [String], rewards: [String], description: String, status: String, price: Double, supply: Double, mintedAmount: Double, assetType: String, assetUrl: String, medias: [String], mainMedia: String, accountId: String, gameId: String, collectionId: String, createdOn: Date, modifiedOn: Date, createdBy: String, modifiedBy: String) {
        self.id = id
        self.tokenId = tokenId
        self.name = name
        self.parentId = parentId
        self.properties = properties
        self.attributes = attributes
        self.achievements = achievements
        self.rewards = rewards
        self.description = description
        self.status = status
        self.price = price
        self.supply = supply
        self.mintedAmount = mintedAmount
        self.assetType = assetType
        self.assetUrl = assetUrl
        self.medias = medias
        self.mainMedia = mainMedia
        self.accountId = accountId
        self.gameId = gameId
        self.collectionId = collectionId
        self.createdOn = createdOn
        self.modifiedOn = modifiedOn
        self.createdBy = createdBy
        self.modifiedBy = modifiedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case tokenId = "token_id"
        case name
        case parentId = "parent_id"
        case properties
        case attributes
        case achievements
        case rewards
        case description
        case status
        case price
        case supply
        case mintedAmount = "minted_amount"
        case assetType = "asset_type"
        case assetUrl = "asset_url"
        case medias
        case mainMedia = "main_media"
        case accountId = "account_id"
        case gameId = "game_id"
        case collectionId = "collection_id"
        case createdOn = "created_on"
        case modifiedOn = "modified_on"
        case createdBy = "created_by"
        case modifiedBy = "modified_by"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(tokenId, forKey: .tokenId)
        try container.encode(name, forKey: .name)
        try container.encode(parentId, forKey: .parentId)
        try container.encode(properties, forKey: .properties)
        try container.encode(attributes, forKey: .attributes)
        try container.encode(achievements, forKey: .achievements)
        try container.encode(rewards, forKey: .rewards)
        try container.encode(description, forKey: .description)
        try container.encode(status, forKey: .status)
        try container.encode(price, forKey: .price)
        try container.encode(supply, forKey: .supply)
        try container.encode(mintedAmount, forKey: .mintedAmount)
        try container.encode(assetType, forKey: .assetType)
        try container.encode(assetUrl, forKey: .assetUrl)
        try container.encode(medias, forKey: .medias)
        try container.encode(mainMedia, forKey: .mainMedia)
        try container.encode(accountId, forKey: .accountId)
        try container.encode(gameId, forKey: .gameId)
        try container.encode(collectionId, forKey: .collectionId)
        try container.encode(createdOn, forKey: .createdOn)
        try container.encode(modifiedOn, forKey: .modifiedOn)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encode(modifiedBy, forKey: .modifiedBy)
    }
}

}
