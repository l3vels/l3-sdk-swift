# PlayerAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countPlayersByGameId**](PlayerAPI.md#countplayersbygameid) | **GET** /v1/player/count/{game_id} | Count players
[**createPlayer**](PlayerAPI.md#createplayer) | **POST** /v1/player | Create new player
[**getPlayerAssetById**](PlayerAPI.md#getplayerassetbyid) | **GET** /v1/player-asset/{game_id}/{id} | Retrieve player asset by ID
[**getPlayerById**](PlayerAPI.md#getplayerbyid) | **GET** /v1/player/{game_id}/{id} | Retrieve player by ID
[**getPlayers**](PlayerAPI.md#getplayers) | **GET** /v1/player | Retrieve players
[**playerAssets**](PlayerAPI.md#playerassets) | **GET** /v1/player-asset | Retrieve player assets
[**updatePlayer**](PlayerAPI.md#updateplayer) | **PUT** /v1/player | Update an existing Player


# **countPlayersByGameId**
```swift
    open class func countPlayersByGameId(authorization: String, gameId: String) -> Observable<Double>
```

Count players

Count players in game. Example: count players in game Call of Duty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game Id

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game Id | 

### Return type

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPlayer**
```swift
    open class func createPlayer(authorization: String, createPlayerInput: CreatePlayerInput) -> Observable<Player>
```

Create new player

Create new player for Game. Example: Create new player Jack in game Call of Duty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let createPlayerInput = CreatePlayerInput(uniqueId: "uniqueId_example", name: "name_example", username: "username_example", email: "email_example", avatar: "avatar_example", gameId: "gameId_example", isCreateWallet: true, customProps: ["customProps_example"]) // CreatePlayerInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **createPlayerInput** | [**CreatePlayerInput**](CreatePlayerInput.md) |  | 

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlayerAssetById**
```swift
    open class func getPlayerAssetById(authorization: String, id: String, gameId: String) -> Observable<PlayerAsset>
```

Retrieve player asset by ID

Retrieve player asset by ID. Player asset represents a single asset that a player owns. It has amount field that represents how many of this asset player owns.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let id = "id_example" // String | 
let gameId = "gameId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **id** | **String** |  | 
 **gameId** | **String** |  | 

### Return type

[**PlayerAsset**](PlayerAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlayerById**
```swift
    open class func getPlayerById(authorization: String, id: String, gameId: String) -> Observable<Player>
```

Retrieve player by ID

Retrieves a specific player by ID associated with Game. Example: retrieve player Jack from game Call of Duty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let id = "id_example" // String | Player ID that you created in your Game. Example: Jack, George, etc.
let gameId = "gameId_example" // String | Game ID to find asset in. Example: Call of Duty, Fortnite, etc.

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **id** | **String** | Player ID that you created in your Game. Example: Jack, George, etc. | 
 **gameId** | **String** | Game ID to find asset in. Example: Call of Duty, Fortnite, etc. | 

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlayers**
```swift
    open class func getPlayers(authorization: String, gameId: String, sort: String? = nil, order: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<[Player]>
```

Retrieve players

Retrieve a list of players that match the specified filter criteria. Developers can use this method to retrieve players by name, category, status, or other properties. Example: Retrieve players from game Call of Duty.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to find player in your game. Example: Fortnite, Minecraft, etc.
let sort = "sort_example" // String | Player field to sort by. You can sort by name, created_on and etc. (optional)
let order = "order_example" // String | Sort order (ASC for ascending or DESC for descending) (optional)
let searchText = "searchText_example" // String | Search player by name (optional)
let limit = 987 // Double | Number of players to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to find player in your game. Example: Fortnite, Minecraft, etc. | 
 **sort** | **String** | Player field to sort by. You can sort by name, created_on and etc. | [optional] 
 **order** | **String** | Sort order (ASC for ascending or DESC for descending) | [optional] 
 **searchText** | **String** | Search player by name | [optional] 
 **limit** | **Double** | Number of players to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**[Player]**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **playerAssets**
```swift
    open class func playerAssets(authorization: String, gameId: String, assetId: String? = nil, playerId: String? = nil, sort: String? = nil, order: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<[PlayerAsset]>
```

Retrieve player assets

This API method retrieves a list of Player assets that match the specified filter criteria. Developers can use this method to retrieve Player assets by player, Game or other properties.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc.
let assetId = "assetId_example" // String | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc. (optional)
let playerId = "playerId_example" // String | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc. (optional)
let sort = "sort_example" // String | Player asset field to sort by. You can sort by name, created_on and etc. (optional)
let order = "order_example" // String | Sort order (ASC for ascending or DESC for descending) (optional)
let limit = 987 // Double | Number of player assets to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc. | 
 **assetId** | **String** | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc. | [optional] 
 **playerId** | **String** | Game ID to find player assets in your game. Example: Fortnite, Minecraft, etc. | [optional] 
 **sort** | **String** | Player asset field to sort by. You can sort by name, created_on and etc. | [optional] 
 **order** | **String** | Sort order (ASC for ascending or DESC for descending) | [optional] 
 **limit** | **Double** | Number of player assets to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**[PlayerAsset]**](PlayerAsset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePlayer**
```swift
    open class func updatePlayer(authorization: String) -> Observable<Player>
```

Update an existing Player

This API method allows developers to update an existing Player by providing the ID of the Player and the updated properties and associated assets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 

### Return type

[**Player**](Player.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

