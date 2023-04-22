# CollectionAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countCollectionsByGameId**](CollectionAPI.md#countcollectionsbygameid) | **GET** /v1/collection/count/{game_id} | Count collections
[**getCollectionById**](CollectionAPI.md#getcollectionbyid) | **GET** /v1/collection/{game_id}/{id} | Retrieve collection by ID
[**getCollections**](CollectionAPI.md#getcollections) | **GET** /v1/collection | Retrieve collections


# **countCollectionsByGameId**
```swift
    open class func countCollectionsByGameId(authorization: String, gameId: String) -> Observable<Double>
```

Count collections

Count total collections in game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to count collections in

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to count collections in | 

### Return type

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollectionById**
```swift
    open class func getCollectionById(authorization: String, id: String, gameId: String) -> Observable<Collection>
```

Retrieve collection by ID

This API method retrieves a specific collection based on the unique identifier provided in the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let id = "id_example" // String | Collection ID to find
let gameId = "gameId_example" // String | Game ID to find collection in

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **id** | **String** | Collection ID to find | 
 **gameId** | **String** | Game ID to find collection in | 

### Return type

[**Collection**](Collection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCollections**
```swift
    open class func getCollections(authorization: String, gameId: String, sort: String? = nil, order: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<[Collection]>
```

Retrieve collections

This API method retrieves a list of collections that match the specified filter criteria. Developers can use this method to retrieve collections by name, category, status, or other properties.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to find collections in your game. Example: Fortnite, Minecraft, etc.
let sort = "sort_example" // String | Collection field to sort by. You can sort by name, created_on and etc. (optional)
let order = "order_example" // String | Sort order (ASC for ascending or DESC for descending) (optional)
let searchText = "searchText_example" // String | Search collections by name (optional)
let limit = 987 // Double | Number of collections to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to find collections in your game. Example: Fortnite, Minecraft, etc. | 
 **sort** | **String** | Collection field to sort by. You can sort by name, created_on and etc. | [optional] 
 **order** | **String** | Sort order (ASC for ascending or DESC for descending) | [optional] 
 **searchText** | **String** | Search collections by name | [optional] 
 **limit** | **Double** | Number of collections to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**[Collection]**](Collection.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

