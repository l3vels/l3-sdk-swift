# GameAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGame**](GameAPI.md#creategame) | **POST** /v1/game | Create Game
[**gameControllerGetGames**](GameAPI.md#gamecontrollergetgames) | **GET** /v1/game | Retrieve all games
[**getGameById**](GameAPI.md#getgamebyid) | **GET** /v1/game/{game_id} | Retrieve Game
[**getGameByName**](GameAPI.md#getgamebyname) | **GET** /v1/game/name/{name} | Retrieve Game By Name


# **createGame**
```swift
    open class func createGame(authorization: String, body: AnyCodable) -> Observable<Game>
```

Create Game

Create game on platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let body = "TODO" // AnyCodable | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **body** | **AnyCodable** |  | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gameControllerGetGames**
```swift
    open class func gameControllerGetGames(authorization: String, gameId: String, sort: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<Game>
```

Retrieve all games

Retrieve all your games/games created on the platform. You can filter games by name, description. You can sort games by field

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID
let sort = "sort_example" // String | In which order to sort the results. Can be ASC for ascending or DESC for descending order (optional)
let searchText = "searchText_example" // String | Filter by game name or description (optional)
let limit = 987 // Double | Number of players to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID | 
 **sort** | **String** | In which order to sort the results. Can be ASC for ascending or DESC for descending order | [optional] 
 **searchText** | **String** | Filter by game name or description | [optional] 
 **limit** | **Double** | Number of players to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameById**
```swift
    open class func getGameById(authorization: String, gameId: String) -> Observable<Game>
```

Retrieve Game

Get Game by ID created on the platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGameByName**
```swift
    open class func getGameByName(authorization: String, name: String) -> Observable<Game>
```

Retrieve Game By Name

Get Game by Name created on the platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let name = "name_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **name** | **String** |  | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

