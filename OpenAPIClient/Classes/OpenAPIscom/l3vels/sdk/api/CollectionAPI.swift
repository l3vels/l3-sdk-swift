//
// CollectionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift
#if canImport(AnyCodable)
import AnyCodable
#endif

extension OpenAPIClientAPI {


open class CollectionAPI {

    /**
     Count collections
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID to count collections in 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Double>
     */
    open class func countCollectionsByGameId(authorization: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Double> {
        return Observable.create { observer -> Disposable in
            let requestTask = countCollectionsByGameIdWithRequestBuilder(authorization: authorization, gameId: gameId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    observer.onNext(response.body)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            
            return Disposables.create {
                requestTask.cancel()
            }
        }
    }

    /**
     Count collections
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID to count collections in 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func countCollectionsByGameId(authorization: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Double, ErrorResponse>) -> Void)) -> RequestTask {
        return countCollectionsByGameIdWithRequestBuilder(authorization: authorization, gameId: gameId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Count collections
     - GET /v1/collection/count/{game_id}
     - Count total collections in game.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID to count collections in 
     - returns: RequestBuilder<Double> 
     */
    open class func countCollectionsByGameIdWithRequestBuilder(authorization: String, gameId: String) -> RequestBuilder<Double> {
        var localVariablePath = "/v1/collection/count/{game_id}"
        let gameIdPreEscape = "\(APIHelper.mapValueToPathItem(gameId))"
        let gameIdPostEscape = gameIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{game_id}", with: gameIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Double>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Retrieve collection by ID
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter id: (path) Collection ID to find 
     - parameter gameId: (path) Game ID to find collection in 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Collection>
     */
    open class func getCollectionById(authorization: String, id: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Collection> {
        return Observable.create { observer -> Disposable in
            let requestTask = getCollectionByIdWithRequestBuilder(authorization: authorization, id: id, gameId: gameId).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    observer.onNext(response.body)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            
            return Disposables.create {
                requestTask.cancel()
            }
        }
    }

    /**
     Retrieve collection by ID
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter id: (path) Collection ID to find 
     - parameter gameId: (path) Game ID to find collection in 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getCollectionById(authorization: String, id: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Collection, ErrorResponse>) -> Void)) -> RequestTask {
        return getCollectionByIdWithRequestBuilder(authorization: authorization, id: id, gameId: gameId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve collection by ID
     - GET /v1/collection/{game_id}/{id}
     - This API method retrieves a specific collection based on the unique identifier provided in the request.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter id: (path) Collection ID to find 
     - parameter gameId: (path) Game ID to find collection in 
     - returns: RequestBuilder<Collection> 
     */
    open class func getCollectionByIdWithRequestBuilder(authorization: String, id: String, gameId: String) -> RequestBuilder<Collection> {
        var localVariablePath = "/v1/collection/{game_id}/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let gameIdPreEscape = "\(APIHelper.mapValueToPathItem(gameId))"
        let gameIdPostEscape = gameIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{game_id}", with: gameIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Collection>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Retrieve collections
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID to find collections in your game. Example: Fortnite, Minecraft, etc. 
     - parameter sort: (query) Collection field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search collections by name (optional)
     - parameter limit: (query) Number of collections to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[Collection]>
     */
    open class func getCollections(authorization: String, gameId: String, sort: String? = nil, order: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<[Collection]> {
        return Observable.create { observer -> Disposable in
            let requestTask = getCollectionsWithRequestBuilder(authorization: authorization, gameId: gameId, sort: sort, order: order, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
                switch result {
                case let .success(response):
                    observer.onNext(response.body)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            
            return Disposables.create {
                requestTask.cancel()
            }
        }
    }

    /**
     Retrieve collections
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID to find collections in your game. Example: Fortnite, Minecraft, etc. 
     - parameter sort: (query) Collection field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search collections by name (optional)
     - parameter limit: (query) Number of collections to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getCollections(authorization: String, gameId: String, sort: String? = nil, order: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[Collection], ErrorResponse>) -> Void)) -> RequestTask {
        return getCollectionsWithRequestBuilder(authorization: authorization, gameId: gameId, sort: sort, order: order, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve collections
     - GET /v1/collection
     - This API method retrieves a list of collections that match the specified filter criteria. Developers can use this method to retrieve collections by name, category, status, or other properties.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID to find collections in your game. Example: Fortnite, Minecraft, etc. 
     - parameter sort: (query) Collection field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search collections by name (optional)
     - parameter limit: (query) Number of collections to return per page (optional)
     - parameter page: (query) Page number (optional)
     - returns: RequestBuilder<[Collection]> 
     */
    open class func getCollectionsWithRequestBuilder(authorization: String, gameId: String, sort: String? = nil, order: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> RequestBuilder<[Collection]> {
        let localVariablePath = "/v1/collection"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "game_id": (wrappedValue: gameId.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "order": (wrappedValue: order?.encodeToJSON(), isExplode: true),
            "search_text": (wrappedValue: searchText?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Collection]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
}
