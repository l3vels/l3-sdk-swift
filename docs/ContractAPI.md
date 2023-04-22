# ContractAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countContractsByGameId**](ContractAPI.md#countcontractsbygameid) | **GET** /v1/contract/collection-size | Collection size
[**getContractURI**](ContractAPI.md#getcontracturi) | **GET** /v1/contract/contract-uri | Get Contract URI
[**setContractURI**](ContractAPI.md#setcontracturi) | **PUT** /v1/contract/contract-uri | Update Contract URI
[**updateSaleStatus**](ContractAPI.md#updatesalestatus) | **PUT** /v1/contract/sale-status | Update Sale status


# **countContractsByGameId**
```swift
    open class func countContractsByGameId(authorization: String, collectionId: String, gameId: String) -> Observable<Void>
```

Collection size

Count total contract in game.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let collectionId = "collectionId_example" // String | 
let gameId = "gameId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **collectionId** | **String** |  | 
 **gameId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getContractURI**
```swift
    open class func getContractURI(authorization: String, collectionId: String, gameId: String) -> Observable<Void>
```

Get Contract URI

Gets contract uri of contract

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let collectionId = "collectionId_example" // String | 
let gameId = "gameId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **collectionId** | **String** |  | 
 **gameId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setContractURI**
```swift
    open class func setContractURI(authorization: String, setContractUriInput: SetContractUriInput) -> Observable<Void>
```

Update Contract URI

Update Contract URI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let setContractUriInput = SetContractUriInput(gameId: "gameId_example", collectionId: "collectionId_example", contractUri: "contractUri_example") // SetContractUriInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **setContractUriInput** | [**SetContractUriInput**](SetContractUriInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSaleStatus**
```swift
    open class func updateSaleStatus(authorization: String, setSaleStatusInput: SetSaleStatusInput) -> Observable<Void>
```

Update Sale status

Update Sale status to PAUSED, PRE_SALE or PUBLIC

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let setSaleStatusInput = SetSaleStatusInput(gameId: "gameId_example", collectionId: "collectionId_example", saleStatus: 123) // SetSaleStatusInput | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **setSaleStatusInput** | [**SetSaleStatusInput**](SetSaleStatusInput.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

