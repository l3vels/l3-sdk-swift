# GameAPI

All URIs are relative to *https://api-dev.l3vels.xyz*

Method | HTTP request | Description
------------- | ------------- | -------------
[**projectControllerProjectById**](GameAPI.md#projectcontrollerprojectbyid) | **GET** /v1/game/{id} | Retrieve Game


# **projectControllerProjectById**
```swift
    open class func projectControllerProjectById(authorization: String, id: String) -> Observable<Project>
```

Retrieve Game

Get game/project by ID created on the platform.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | API key is associated with multiple projects. Please include it in to use developers API.
let id = "id_example" // String | Game or Project Id

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | API key is associated with multiple projects. Please include it in to use developers API. | 
 **id** | **String** | Game or Project Id | 

### Return type

[**Project**](Project.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

