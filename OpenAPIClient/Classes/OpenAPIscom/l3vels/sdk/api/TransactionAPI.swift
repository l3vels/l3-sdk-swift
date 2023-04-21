//
// TransactionAPI.swift
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


open class TransactionAPI {

    /**
     Retrieve Transaction by ID
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter id: (path)  
     - parameter projectId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Transaction>
     */
    open class func transactionControllerTransactionById(authorization: String, id: String, projectId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Transaction> {
        return Observable.create { observer -> Disposable in
            let requestTask = transactionControllerTransactionByIdWithRequestBuilder(authorization: authorization, id: id, projectId: projectId).execute(apiResponseQueue) { result in
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
     Retrieve Transaction by ID
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter id: (path)  
     - parameter projectId: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionControllerTransactionById(authorization: String, id: String, projectId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Transaction, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionControllerTransactionByIdWithRequestBuilder(authorization: authorization, id: id, projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve Transaction by ID
     - GET /v1/transaction/{project_id}/{id}
     - Retrieve transaction by ID
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter id: (path)  
     - parameter projectId: (path)  
     - returns: RequestBuilder<Transaction> 
     */
    open class func transactionControllerTransactionByIdWithRequestBuilder(authorization: String, id: String, projectId: String) -> RequestBuilder<Transaction> {
        var localVariablePath = "/v1/transaction/{project_id}/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let projectIdPreEscape = "\(APIHelper.mapValueToPathItem(projectId))"
        let projectIdPostEscape = projectIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{project_id}", with: projectIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Transaction>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter order
     */
    public enum Order_transactionControllerTransactions: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Retrieve transactions
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter projectId: (query) Game/project ID to find transactions in your game. Example: Fortnite, Minecraft, etc. 
     - parameter collectionId: (query) Filter transactions by collection. Example: Get transactions only from Weapons collection. (optional)
     - parameter playerId: (query) Player ID to mint to. You can provide player ID or player address (optional)
     - parameter sort: (query) Asset field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search transactions by name (optional)
     - parameter limit: (query) Number of transactions to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Transaction>
     */
    open class func transactionControllerTransactions(authorization: String, projectId: String, collectionId: String? = nil, playerId: String? = nil, sort: String? = nil, order: Order_transactionControllerTransactions? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Transaction> {
        return Observable.create { observer -> Disposable in
            let requestTask = transactionControllerTransactionsWithRequestBuilder(authorization: authorization, projectId: projectId, collectionId: collectionId, playerId: playerId, sort: sort, order: order, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
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
     Retrieve transactions
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter projectId: (query) Game/project ID to find transactions in your game. Example: Fortnite, Minecraft, etc. 
     - parameter collectionId: (query) Filter transactions by collection. Example: Get transactions only from Weapons collection. (optional)
     - parameter playerId: (query) Player ID to mint to. You can provide player ID or player address (optional)
     - parameter sort: (query) Asset field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search transactions by name (optional)
     - parameter limit: (query) Number of transactions to return per page (optional)
     - parameter page: (query) Page number (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionControllerTransactions(authorization: String, projectId: String, collectionId: String? = nil, playerId: String? = nil, sort: String? = nil, order: Order_transactionControllerTransactions? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Transaction, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionControllerTransactionsWithRequestBuilder(authorization: authorization, projectId: projectId, collectionId: collectionId, playerId: playerId, sort: sort, order: order, searchText: searchText, limit: limit, page: page).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(.success(response.body))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Retrieve transactions
     - GET /v1/transaction
     - Retrieve all transactions.
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter projectId: (query) Game/project ID to find transactions in your game. Example: Fortnite, Minecraft, etc. 
     - parameter collectionId: (query) Filter transactions by collection. Example: Get transactions only from Weapons collection. (optional)
     - parameter playerId: (query) Player ID to mint to. You can provide player ID or player address (optional)
     - parameter sort: (query) Asset field to sort by. You can sort by name, created_on and etc. (optional)
     - parameter order: (query) Sort order (ASC for ascending or DESC for descending) (optional)
     - parameter searchText: (query) Search transactions by name (optional)
     - parameter limit: (query) Number of transactions to return per page (optional)
     - parameter page: (query) Page number (optional)
     - returns: RequestBuilder<Transaction> 
     */
    open class func transactionControllerTransactionsWithRequestBuilder(authorization: String, projectId: String, collectionId: String? = nil, playerId: String? = nil, sort: String? = nil, order: Order_transactionControllerTransactions? = nil, searchText: String? = nil, limit: Double? = nil, page: Double? = nil) -> RequestBuilder<Transaction> {
        let localVariablePath = "/v1/transaction"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "project_id": (wrappedValue: projectId.encodeToJSON(), isExplode: true),
            "collection_id": (wrappedValue: collectionId?.encodeToJSON(), isExplode: true),
            "player_id": (wrappedValue: playerId?.encodeToJSON(), isExplode: true),
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

        let localVariableRequestBuilder: RequestBuilder<Transaction>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func transactionControllerWebhook(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = transactionControllerWebhookWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
                switch result {
                case .success:
                    observer.onNext(())
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

     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func transactionControllerWebhook(authorization: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return transactionControllerWebhookWithRequestBuilder(authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     - POST /v1/transaction/webhook
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - returns: RequestBuilder<Void> 
     */
    open class func transactionControllerWebhookWithRequestBuilder(authorization: String) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/transaction/webhook"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
}
