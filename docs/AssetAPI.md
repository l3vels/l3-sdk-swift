# AssetAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countByGame**](AssetAPI.md#countbygame) | **GET** /v1/asset/count/{game_id} | Count assets
[**getAssetById**](AssetAPI.md#getassetbyid) | **GET** /v1/asset/{game_id}/{id} | Retrieve asset by ID
[**getAssets**](AssetAPI.md#getassets) | **GET** /v1/asset | Retrieve assets
[**updateAsset**](AssetAPI.md#updateasset) | **PATCH** /v1/asset/{id} | Update asset


# **countByGame**
```swift
    open class func countByGame(authorization: String, gameId: String) -> Observable<Double>
```

Count assets

Counts total assets in game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** |  | 

### Return type

**Double**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetById**
```swift
    open class func getAssetById(authorization: String, id: String, gameId: String) -> Observable<Asset>
```

Retrieve asset by ID

Retrieve asset by ID in specific Game. Example: Find asset AK-47 in game Call of Duty

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let id = "id_example" // String | Asset ID to find
let gameId = "gameId_example" // String | Game ID to find asset in

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **id** | **String** | Asset ID to find | 
 **gameId** | **String** | Game ID to find asset in | 

### Return type

[**Asset**](Asset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssets**
```swift
    open class func getAssets(authorization: String, gameId: String, collectionId: String? = nil, sort: String? = nil, order: Order_getAssets? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<AssetsResponse>
```

Retrieve assets

This API method retrieves a list of assets that match the specified filter criteria. Developers can use this method to retrieve assets by name, description or other properties

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to find assets in your game. Example: Fortnite, Minecraft, etc.
let collectionId = "collectionId_example" // String | Filter assets by collection. Example: Get assets only from Weapons collection. (optional)
let sort = "sort_example" // String | Asset field to sort by. You can sort by name, created_on and etc. (optional)
let order = "order_example" // String | Sort order (ASC for ascending or DESC for descending) (optional)
let searchText = "searchText_example" // String | Search assets by name (optional)
let limit = 987 // Double | Number of assets to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to find assets in your game. Example: Fortnite, Minecraft, etc. | 
 **collectionId** | **String** | Filter assets by collection. Example: Get assets only from Weapons collection. | [optional] 
 **sort** | **String** | Asset field to sort by. You can sort by name, created_on and etc. | [optional] 
 **order** | **String** | Sort order (ASC for ascending or DESC for descending) | [optional] 
 **searchText** | **String** | Search assets by name | [optional] 
 **limit** | **Double** | Number of assets to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**AssetsResponse**](AssetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAsset**
```swift
    open class func updateAsset(authorization: String, id: String, updateAssetInput: UpdateAssetInput) -> Observable<Asset>
```

Update asset

Update asset by ID in specific collection. Example: Update asset AK-47 in collection Weapons

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let id = "id_example" // String | Asset ID to update
let updateAssetInput = UpdateAssetInput(name: "name_example", description: "description_example", price: 123, supply: 123, assetUrl: "assetUrl_example", customProps: 123, collectionId: "collectionId_example", gameId: "gameId_example") // UpdateAssetInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **id** | **String** | Asset ID to update | 
 **updateAssetInput** | [**UpdateAssetInput**](UpdateAssetInput.md) |  | 

### Return type

[**Asset**](Asset.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

