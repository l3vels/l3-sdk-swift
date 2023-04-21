# MintAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mintControllerAirdrop**](MintAPI.md#mintcontrollerairdrop) | **POST** /v1/mint/airdrop | Airdrop asset to player
[**mintControllerAward**](MintAPI.md#mintcontrolleraward) | **POST** /v1/mint/award | Award asset to player
[**mintControllerMint**](MintAPI.md#mintcontrollermint) | **POST** /v1/mint | Mint asset
[**mintControllerMintBatch**](MintAPI.md#mintcontrollermintbatch) | **POST** /v1/mint/batch | Batch mint assets
[**mintControllerPlayerMint**](MintAPI.md#mintcontrollerplayermint) | **POST** /v1/mint/player | Mint asset by player
[**mintControllerPlayerMintBatch**](MintAPI.md#mintcontrollerplayermintbatch) | **POST** /v1/mint/batch-player | Batch mint assets by player


# **mintControllerAirdrop**
```swift
    open class func mintControllerAirdrop(authorization: String, mintDto: MintDto) -> Observable<Void>
```

Airdrop asset to player

Airdrop asset to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintDto = MintDto(contractId: "contractId_example", projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintDto_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintDto** | [**MintDto**](MintDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintControllerAward**
```swift
    open class func mintControllerAward(authorization: String, mintDto: MintDto) -> Observable<Void>
```

Award asset to player

Award asset to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintDto = MintDto(contractId: "contractId_example", projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintDto_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintDto** | [**MintDto**](MintDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintControllerMint**
```swift
    open class func mintControllerMint(authorization: String, mintDto: MintDto) -> Observable<Void>
```

Mint asset

Mint an asset by admin to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintDto = MintDto(contractId: "contractId_example", projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintDto_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintDto** | [**MintDto**](MintDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintControllerMintBatch**
```swift
    open class func mintControllerMintBatch(authorization: String, mintBatchDto: MintBatchDto) -> Observable<Void>
```

Batch mint assets

Batch mint assets by admin to player

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintBatchDto = MintBatchDto(projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", assets: ["assets_example"]) // MintBatchDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintBatchDto** | [**MintBatchDto**](MintBatchDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintControllerPlayerMint**
```swift
    open class func mintControllerPlayerMint(authorization: String, mintDto: MintDto) -> Observable<Void>
```

Mint asset by player

Mint asset by player. Player must have enough balance to mint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintDto = MintDto(contractId: "contractId_example", projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", asset: MintDto_asset(tokenId: 123, assetId: "assetId_example", amount: 123)) // MintDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintDto** | [**MintDto**](MintDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mintControllerPlayerMintBatch**
```swift
    open class func mintControllerPlayerMintBatch(authorization: String, mintBatchDto: MintBatchDto) -> Observable<Void>
```

Batch mint assets by player

Batch mint assets by player. Player must have enough balance to mint.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let mintBatchDto = MintBatchDto(projectId: "projectId_example", collectionId: "collectionId_example", playerAddress: "playerAddress_example", playerId: "playerId_example", assets: ["assets_example"]) // MintBatchDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **mintBatchDto** | [**MintBatchDto**](MintBatchDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

