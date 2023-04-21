# ContractAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contractControllerCollectionSize**](ContractAPI.md#contractcontrollercollectionsize) | **GET** /v1/contract/collection-size | Collection size
[**contractControllerContractUri**](ContractAPI.md#contractcontrollercontracturi) | **GET** /v1/contract/contract-uri | Get Contract URI
[**contractControllerSetContractUri**](ContractAPI.md#contractcontrollersetcontracturi) | **PUT** /v1/contract/contract-uri | Update Contract URI
[**contractControllerSetSaleStatus**](ContractAPI.md#contractcontrollersetsalestatus) | **PUT** /v1/contract/sale-status | Update Sale status


# **contractControllerCollectionSize**
```swift
    open class func contractControllerCollectionSize(authorization: String, collectionId: String, projectId: String) -> Observable<Void>
```

Collection size

Get size of collection

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let collectionId = "collectionId_example" // String | 
let projectId = "projectId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **collectionId** | **String** |  | 
 **projectId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractControllerContractUri**
```swift
    open class func contractControllerContractUri(authorization: String, collectionId: String, projectId: String) -> Observable<Void>
```

Get Contract URI

Gets contract uri of contract

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let collectionId = "collectionId_example" // String | 
let projectId = "projectId_example" // String | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **collectionId** | **String** |  | 
 **projectId** | **String** |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractControllerSetContractUri**
```swift
    open class func contractControllerSetContractUri(authorization: String, setContractUriDto: SetContractUriDto) -> Observable<Void>
```

Update Contract URI

Update Contract URI

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let setContractUriDto = SetContractUriDto(projectId: "projectId_example", collectionId: "collectionId_example", contractUri: "contractUri_example") // SetContractUriDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **setContractUriDto** | [**SetContractUriDto**](SetContractUriDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractControllerSetSaleStatus**
```swift
    open class func contractControllerSetSaleStatus(authorization: String, setSaleStatusDto: SetSaleStatusDto) -> Observable<Void>
```

Update Sale status

Update Sale status to PAUSED, PRE_SALE or PUBLIC

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let setSaleStatusDto = SetSaleStatusDto(projectId: "projectId_example", collectionId: "collectionId_example", saleStatus: 123) // SetSaleStatusDto | 

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **setSaleStatusDto** | [**SetSaleStatusDto**](SetSaleStatusDto.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

