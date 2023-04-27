# MintAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**airdropAssetToPlayer**](MintAPI.md#airdropassettoplayer) | **POST** /v1/mint/airdrop | Airdrop asset to player
[**awardAssetToPlayer**](MintAPI.md#awardassettoplayer) | **POST** /v1/mint/award | Award asset to player
[**batchMintAssetByPlayer**](MintAPI.md#batchmintassetbyplayer) | **POST** /v1/mint/batch-player | Batch mint assets by player
[**mintAsset**](MintAPI.md#mintasset) | **POST** /v1/mint | Mint asset
[**mintAssetByPlayer**](MintAPI.md#mintassetbyplayer) | **POST** /v1/mint/player | Mint asset by player
[**mintBatchAsset**](MintAPI.md#mintbatchasset) | **POST** /v1/mint/batch | Batch mint assets


# **airdropAssetToPlayer**
```swift
    open class func airdropAssetToPlayer(authorization: String, mintInput: MintInput) -> Observable<Void>
```

Airdrop asset to player

Airdrop asset to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintInput = MintInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintInput_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintInput** | [**MintInput**](MintInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **awardAssetToPlayer**
```swift
    open class func awardAssetToPlayer(authorization: String, mintInput: MintInput) -> Observable<Void>
```

Award asset to player

Award asset to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintInput = MintInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintInput_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintInput** | [**MintInput**](MintInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **batchMintAssetByPlayer**
```swift
    open class func batchMintAssetByPlayer(authorization: String, mintBatchInput: MintBatchInput) -> Observable<Void>
```

Batch mint assets by player

Batch mint assets by player. Player must have enough balance to mint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintBatchInput = MintBatchInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", assets: ["assets_example"]) // MintBatchInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintBatchInput** | [**MintBatchInput**](MintBatchInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintAsset**
```swift
    open class func mintAsset(authorization: String, mintInput: MintInput) -> Observable<Void>
```

Mint asset

Mint an asset by admin to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintInput = MintInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintInput_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintInput** | [**MintInput**](MintInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintAssetByPlayer**
```swift
    open class func mintAssetByPlayer(authorization: String, mintInput: MintInput) -> Observable<Void>
```

Mint asset by player

Mint asset by player. Player must have enough balance to mint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintInput = MintInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintInput_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintInput** | [**MintInput**](MintInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintBatchAsset**
```swift
    open class func mintBatchAsset(authorization: String, mintBatchInput: MintBatchInput) -> Observable<Void>
```

Batch mint assets

Batch mint assets by admin to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let mintBatchInput = MintBatchInput(gameId: "gameId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", assets: ["assets_example"]) // MintBatchInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **mintBatchInput** | [**MintBatchInput**](MintBatchInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

