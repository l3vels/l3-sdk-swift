//
// UpdateAssetDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.UpdateAssetDto")
public typealias UpdateAssetDto = OpenAPIClientAPI.UpdateAssetDto

extension OpenAPIClientAPI {

public struct UpdateAssetDto: Codable, JSONEncodable, Hashable {

    /** The name of the asset. */
    public var name: String?
    /** The story of asset. */
    public var description: String?
    /** Price of asset */
    public var price: Double?
    /** Supply of asset */
    public var supply: Double?
    /** Asset URL */
    public var assetUrl: String?
    /** Custom props for asset. */
    public var customProps: AnyCodable?
    /** Collection ID to find and update the asset in. Example: Update AK-47 asset in Weapons collection. */
    public var collectionId: String
    /** Game/project ID to update the asset in. Example: Call of Duty */
    public var projectId: String

    public init(name: String? = nil, description: String? = nil, price: Double? = nil, supply: Double? = nil, assetUrl: String? = nil, customProps: AnyCodable? = nil, collectionId: String, projectId: String) {
        self.name = name
        self.description = description
        self.price = price
        self.supply = supply
        self.assetUrl = assetUrl
        self.customProps = customProps
        self.collectionId = collectionId
        self.projectId = projectId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case price
        case supply
        case assetUrl = "asset_url"
        case customProps = "custom_props"
        case collectionId = "collection_id"
        case projectId = "project_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(supply, forKey: .supply)
        try container.encodeIfPresent(assetUrl, forKey: .assetUrl)
        try container.encodeIfPresent(customProps, forKey: .customProps)
        try container.encode(collectionId, forKey: .collectionId)
        try container.encode(projectId, forKey: .projectId)
    }
}

}
