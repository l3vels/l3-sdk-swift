# TransactionAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTransactionById**](TransactionAPI.md#gettransactionbyid) | **GET** /v1/transaction/{game_id}/{id} | Retrieve Transaction by ID
[**getTransactions**](TransactionAPI.md#gettransactions) | **GET** /v1/transaction | Retrieve transactions
[**transactionControllerWebhook**](TransactionAPI.md#transactioncontrollerwebhook) | **POST** /v1/transaction/webhook | 


# **getTransactionById**
```swift
    open class func getTransactionById(authorization: String, id: String, gameId: String) -> Observable<Transaction>
```

Retrieve Transaction by ID

Retrieve transaction by ID

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

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
```swift
    open class func getTransactions(authorization: String, gameId: String, collectionId: String? = nil, playerId: String? = nil, sort: String? = nil, order: Order_getTransactions? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> Observable<Transaction>
```

Retrieve transactions

Retrieve all transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple games. Please include it in to use developers API.
let gameId = "gameId_example" // String | Game ID to find transactions in your game. Example: Fortnite, Minecraft, etc.
let collectionId = "collectionId_example" // String | Filter transactions by collection. Example: Get transactions only from Weapons collection. (optional)
let playerId = "playerId_example" // String | Player ID to mint to. You can provide player ID or player address (optional)
let sort = "sort_example" // String | Asset field to sort by. You can sort by name, created_on and etc. (optional)
let order = "order_example" // String | Sort order (ASC for ascending or DESC for descending) (optional)
let searchText = "searchText_example" // String | Search transactions by name (optional)
let limit = 987 // Double | Number of transactions to return per page (optional)
let page = 987 // Double | Page number (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple games. Please include it in to use developers API. | 
 **gameId** | **String** | Game ID to find transactions in your game. Example: Fortnite, Minecraft, etc. | 
 **collectionId** | **String** | Filter transactions by collection. Example: Get transactions only from Weapons collection. | [optional] 
 **playerId** | **String** | Player ID to mint to. You can provide player ID or player address | [optional] 
 **sort** | **String** | Asset field to sort by. You can sort by name, created_on and etc. | [optional] 
 **order** | **String** | Sort order (ASC for ascending or DESC for descending) | [optional] 
 **searchText** | **String** | Search transactions by name | [optional] 
 **limit** | **Double** | Number of transactions to return per page | [optional] 
 **page** | **Double** | Page number | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerWebhook**
```swift
    open class func transactionControllerWebhook(authorization: String) -> Observable<Void>
```



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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

