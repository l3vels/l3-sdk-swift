# Swift5 API client for OpenAPIClient

L3vels API for Game developers

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 0.3
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://l3vels.com](https://l3vels.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api-dev.l3vels.xyz*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AssetAPI* | [**countByGame**](docs/AssetAPI.md#countbygame) | **GET** /v1/asset/count/{game_id} | Count assets
*AssetAPI* | [**getAssetById**](docs/AssetAPI.md#getassetbyid) | **GET** /v1/asset/{game_id}/{id} | Retrieve asset by ID
*AssetAPI* | [**getAssets**](docs/AssetAPI.md#getassets) | **GET** /v1/asset | Retrieve assets
*AssetAPI* | [**updateAsset**](docs/AssetAPI.md#updateasset) | **PATCH** /v1/asset/{id} | Update asset
*CollectionAPI* | [**countCollectionsByGameId**](docs/CollectionAPI.md#countcollectionsbygameid) | **GET** /v1/collection/count/{game_id} | Count collections
*CollectionAPI* | [**getCollectionById**](docs/CollectionAPI.md#getcollectionbyid) | **GET** /v1/collection/{game_id}/{id} | Retrieve collection by ID
*CollectionAPI* | [**getCollections**](docs/CollectionAPI.md#getcollections) | **GET** /v1/collection | Retrieve collections
*ContractAPI* | [**countContractsByGameId**](docs/ContractAPI.md#countcontractsbygameid) | **GET** /v1/contract/collection-size | Collection size
*ContractAPI* | [**getContractURI**](docs/ContractAPI.md#getcontracturi) | **GET** /v1/contract/contract-uri | Get Contract URI
*ContractAPI* | [**setContractURI**](docs/ContractAPI.md#setcontracturi) | **PUT** /v1/contract/contract-uri | Update Contract URI
*ContractAPI* | [**updateSaleStatus**](docs/ContractAPI.md#updatesalestatus) | **PUT** /v1/contract/sale-status | Update Sale status
*GameAPI* | [**getGameById**](docs/GameAPI.md#getgamebyid) | **GET** /v1/game/{game_id} | Retrieve Game
*MintAPI* | [**airdropAssetToPlayer**](docs/MintAPI.md#airdropassettoplayer) | **POST** /v1/mint/airdrop | Airdrop asset to player
*MintAPI* | [**awardAssetToPlayer**](docs/MintAPI.md#awardassettoplayer) | **POST** /v1/mint/award | Award asset to player
*MintAPI* | [**batchMintAssetByPlayer**](docs/MintAPI.md#batchmintassetbyplayer) | **POST** /v1/mint/batch-player | Batch mint assets by player
*MintAPI* | [**mintAsset**](docs/MintAPI.md#mintasset) | **POST** /v1/mint | Mint asset
*MintAPI* | [**mintAssetByPlayer**](docs/MintAPI.md#mintassetbyplayer) | **POST** /v1/mint/player | Mint asset by player
*MintAPI* | [**mintBatchAsset**](docs/MintAPI.md#mintbatchasset) | **POST** /v1/mint/batch | Batch mint assets
*PlayerAPI* | [**countPlayersByGameId**](docs/PlayerAPI.md#countplayersbygameid) | **GET** /v1/player/count/{game_id} | Count players
*PlayerAPI* | [**createPlayer**](docs/PlayerAPI.md#createplayer) | **POST** /v1/player | Create new player
*PlayerAPI* | [**getPlayerAssetById**](docs/PlayerAPI.md#getplayerassetbyid) | **GET** /v1/player-asset/{game_id}/{id} | Retrieve player asset by ID
*PlayerAPI* | [**getPlayerById**](docs/PlayerAPI.md#getplayerbyid) | **GET** /v1/player/{game_id}/{id} | Retrieve player by ID
*PlayerAPI* | [**getPlayers**](docs/PlayerAPI.md#getplayers) | **GET** /v1/player | Retrieve players
*PlayerAPI* | [**playerAssets**](docs/PlayerAPI.md#playerassets) | **GET** /v1/player-asset | Retrieve player assets
*PlayerAPI* | [**updatePlayer**](docs/PlayerAPI.md#updateplayer) | **PUT** /v1/player | Update an existing Player
*TransactionAPI* | [**getTransactionById**](docs/TransactionAPI.md#gettransactionbyid) | **GET** /v1/transaction/{game_id}/{id} | Retrieve Transaction by ID
*TransactionAPI* | [**getTransactions**](docs/TransactionAPI.md#gettransactions) | **GET** /v1/transaction | Retrieve transactions
*UtilitiesAPI* | [**utilityControllerHealth**](docs/UtilitiesAPI.md#utilitycontrollerhealth) | **GET** /v1/utilities/health | 


## Documentation For Models

 - [Asset](docs/Asset.md)
 - [AssetsResponse](docs/AssetsResponse.md)
 - [Collection](docs/Collection.md)
 - [CreatePlayerInput](docs/CreatePlayerInput.md)
 - [Game](docs/Game.md)
 - [MintBatchInput](docs/MintBatchInput.md)
 - [MintInput](docs/MintInput.md)
 - [MintInputAsset](docs/MintInputAsset.md)
 - [Player](docs/Player.md)
 - [PlayerAsset](docs/PlayerAsset.md)
 - [SetContractUriInput](docs/SetContractUriInput.md)
 - [SetSaleStatusInput](docs/SetSaleStatusInput.md)
 - [TokenInput](docs/TokenInput.md)
 - [Transaction](docs/Transaction.md)
 - [UpdateAssetInput](docs/UpdateAssetInput.md)


## Documentation For Authorization


## X-API-KEY

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Author

support@l3vels.xyz

