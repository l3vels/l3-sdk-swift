//
// CreatePlayerInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@available(*, deprecated, renamed: "OpenAPIClientAPI.CreatePlayerInput")
public typealias CreatePlayerInput = OpenAPIClientAPI.CreatePlayerInput

extension OpenAPIClientAPI {

public struct CreatePlayerInput: Codable, JSONEncodable, Hashable {

    /** You can send your generated unique ID for player if it's handy for game. If field is empty, we will generate unique ID. */
    public var uniqueId: String?
    /** The name of the player. */
    public var name: String
    /** The username of the player. */
    public var username: String?
    /** The email of the player. */
    public var email: String?
    /** The image URL of the player avatar. */
    public var avatar: String?
    /** Game ID to create the player for. Example: Create player Jack for game Fortnite. */
    public var gameId: String
    /** Should create wallet for player or not. */
    public var isCreateWallet: Bool?
    /** Custom props for player. */
    public var customProps: [String]?

    public init(uniqueId: String? = nil, name: String, username: String? = nil, email: String? = nil, avatar: String? = nil, gameId: String, isCreateWallet: Bool? = nil, customProps: [String]? = nil) {
        self.uniqueId = uniqueId
        self.name = name
        self.username = username
        self.email = email
        self.avatar = avatar
        self.gameId = gameId
        self.isCreateWallet = isCreateWallet
        self.customProps = customProps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uniqueId = "unique_id"
        case name
        case username
        case email
        case avatar
        case gameId = "game_id"
        case isCreateWallet = "is_create_wallet"
        case customProps = "custom_props"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uniqueId, forKey: .uniqueId)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(username, forKey: .username)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encode(gameId, forKey: .gameId)
        try container.encodeIfPresent(isCreateWallet, forKey: .isCreateWallet)
        try container.encodeIfPresent(customProps, forKey: .customProps)
    }
}

}
