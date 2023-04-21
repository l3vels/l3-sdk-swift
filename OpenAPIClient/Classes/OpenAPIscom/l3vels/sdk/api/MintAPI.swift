//
// MintAPI.swift
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


open class MintAPI {

    /**
     Airdrop asset to player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerAirdrop(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerAirdropWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
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
     Airdrop asset to player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerAirdrop(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerAirdropWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Airdrop asset to player
     - POST /v1/mint/airdrop
     - Airdrop asset to player
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerAirdropWithRequestBuilder(authorization: String, mintDto: MintDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint/airdrop"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Award asset to player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerAward(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerAwardWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
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
     Award asset to player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerAward(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerAwardWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Award asset to player
     - POST /v1/mint/award
     - Award asset to player
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerAwardWithRequestBuilder(authorization: String, mintDto: MintDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint/award"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Mint asset
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerMint(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerMintWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
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
     Mint asset
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerMint(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerMintWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Mint asset
     - POST /v1/mint
     - Mint an asset by admin to player
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerMintWithRequestBuilder(authorization: String, mintDto: MintDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Batch mint assets
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerMintBatch(authorization: String, mintBatchDto: MintBatchDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerMintBatchWithRequestBuilder(authorization: authorization, mintBatchDto: mintBatchDto).execute(apiResponseQueue) { result in
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
     Batch mint assets
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerMintBatch(authorization: String, mintBatchDto: MintBatchDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerMintBatchWithRequestBuilder(authorization: authorization, mintBatchDto: mintBatchDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Batch mint assets
     - POST /v1/mint/batch
     - Batch mint assets by admin to player
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerMintBatchWithRequestBuilder(authorization: String, mintBatchDto: MintBatchDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint/batch"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintBatchDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Mint asset by player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerPlayerMint(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerPlayerMintWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
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
     Mint asset by player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerPlayerMint(authorization: String, mintDto: MintDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerPlayerMintWithRequestBuilder(authorization: authorization, mintDto: mintDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Mint asset by player
     - POST /v1/mint/player
     - Mint asset by player. Player must have enough balance to mint.
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerPlayerMintWithRequestBuilder(authorization: String, mintDto: MintDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint/player"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintDto)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Batch mint assets by player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func mintControllerPlayerMintBatch(authorization: String, mintBatchDto: MintBatchDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            let requestTask = mintControllerPlayerMintBatchWithRequestBuilder(authorization: authorization, mintBatchDto: mintBatchDto).execute(apiResponseQueue) { result in
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
     Batch mint assets by player
     
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    @discardableResult
    open class func mintControllerPlayerMintBatch(authorization: String, mintBatchDto: MintBatchDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, ErrorResponse>) -> Void)) -> RequestTask {
        return mintControllerPlayerMintBatchWithRequestBuilder(authorization: authorization, mintBatchDto: mintBatchDto).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Batch mint assets by player
     - POST /v1/mint/batch-player
     - Batch mint assets by player. Player must have enough balance to mint.
     - parameter authorization: (header) API key is associated with multiple projects. Please include it in to use developers API. 
     - parameter mintBatchDto: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func mintControllerPlayerMintBatchWithRequestBuilder(authorization: String, mintBatchDto: MintBatchDto) -> RequestBuilder<Void> {
        let localVariablePath = "/v1/mint/batch-player"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: mintBatchDto)

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
