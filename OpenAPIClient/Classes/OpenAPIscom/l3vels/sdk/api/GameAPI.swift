//
// GameAPI.swift
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


open class GameAPI {

    /**
     Create Game
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Game>
     */
    open class func createGame(authorization: String, body: AnyCodable, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Game> {
        return Observable.create { observer -> Disposable in
            let requestTask = createGameWithRequestBuilder(authorization: authorization, body: body).execute(apiResponseQueue) { result in
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
     Create Game
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter body: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func createGame(authorization: String, body: AnyCodable, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Game, ErrorResponse>) -> Void)) -> RequestTask {
        return createGameWithRequestBuilder(authorization: authorization, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create Game
     - POST /v1/game
     - Create game on platform.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter body: (body)  
     - returns: RequestBuilder<Game> 
     */
    open class func createGameWithRequestBuilder(authorization: String, body: AnyCodable) -> RequestBuilder<Game> {
        let localVariablePath = "/v1/game"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Game>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Retrieve all games
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID 
     - parameter sort: (query) In which order to sort the results. Can be ASC for ascending or DESC for descending order (optional)
     - parameter searchText: (query) Filter by game name or description (optional)
     - parameter limit: (query) Number of players to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Game>
     */
    open class func gameControllerGetGames(authorization: String, gameId: String, sort: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Game> {
        return Observable.create { observer -> Disposable in
            let requestTask = gameControllerGetGamesWithRequestBuilder(authorization: authorization, gameId: gameId, sort: sort, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
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
     Retrieve all games
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID 
     - parameter sort: (query) In which order to sort the results. Can be ASC for ascending or DESC for descending order (optional)
     - parameter searchText: (query) Filter by game name or description (optional)
     - parameter limit: (query) Number of players to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func gameControllerGetGames(authorization: String, gameId: String, sort: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Game, ErrorResponse>) -> Void)) -> RequestTask {
        return gameControllerGetGamesWithRequestBuilder(authorization: authorization, gameId: gameId, sort: sort, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve all games
     - GET /v1/game
     - Retrieve all your games/games created on the platform. You can filter games by name, description. You can sort games by field
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (query) Game ID 
     - parameter sort: (query) In which order to sort the results. Can be ASC for ascending or DESC for descending order (optional)
     - parameter searchText: (query) Filter by game name or description (optional)
     - parameter limit: (query) Number of players to return per page (optional)
     - parameter page: (query) Page number (optional)
     - returns: RequestBuilder<Game> 
     */
    open class func gameControllerGetGamesWithRequestBuilder(authorization: String, gameId: String, sort: String? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> RequestBuilder<Game> {
        let localVariablePath = "/v1/game"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "search_text": (wrappedValue: searchText?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "game_id": (wrappedValue: gameId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Game>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Retrieve Game
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Game>
     */
    open class func getGameById(authorization: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Game> {
        return Observable.create { observer -> Disposable in
            let requestTask = getGameByIdWithRequestBuilder(authorization: authorization, gameId: gameId).execute(apiResponseQueue) { result in
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
     Retrieve Game
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getGameById(authorization: String, gameId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Game, ErrorResponse>) -> Void)) -> RequestTask {
        return getGameByIdWithRequestBuilder(authorization: authorization, gameId: gameId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve Game
     - GET /v1/game/{game_id}
     - Get Game by ID created on the platform.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter gameId: (path) Game ID 
     - returns: RequestBuilder<Game> 
     */
    open class func getGameByIdWithRequestBuilder(authorization: String, gameId: String) -> RequestBuilder<Game> {
        var localVariablePath = "/v1/game/{game_id}"
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

        let localVariableRequestBuilder: RequestBuilder<Game>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Retrieve Game By Name
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter name: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Game>
     */
    open class func getGameByName(authorization: String, name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Game> {
        return Observable.create { observer -> Disposable in
            let requestTask = getGameByNameWithRequestBuilder(authorization: authorization, name: name).execute(apiResponseQueue) { result in
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
     Retrieve Game By Name
     
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter name: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func getGameByName(authorization: String, name: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Game, ErrorResponse>) -> Void)) -> RequestTask {
        return getGameByNameWithRequestBuilder(authorization: authorization, name: name).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve Game By Name
     - GET /v1/game/name/{name}
     - Get Game by Name created on the platform.
     - parameter authorization: (header) API key is associated with multiple games. Please include it in to use developers API. 
     - parameter name: (path)  
     - returns: RequestBuilder<Game> 
     */
    open class func getGameByNameWithRequestBuilder(authorization: String, name: String) -> RequestBuilder<Game> {
        var localVariablePath = "/v1/game/name/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Game>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
}
