# Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for the transaction entity. | 
**status** | **String** | Transaction status in Blockchain. Can be pending, success or fail | 
**from** | **String** | Address of the sender of the transaction. | 
**to** | **String** | Address of the receiver of the transaction. It can be contract address or player address if it is a transfer transaction. | 
**contractId** | **String** | Contract ID the transaction is associated with. | 
**contractAddress** | **String** | Contract address where the transaction happened. | 
**blockchain** | **String** | Main blockchain identifier: Ethereum, Polygon, etc. | 
**chainName** | **String** | Chain name identifier: Ethereum, Goerli, Sepolia, PolygonPoS, etc. | 
**chainId** | **Double** | Chain ID: 1 for Ethereum, 5 for Goerli, 80001 for Polygon Mumbai, etc. | 
**environment** | **String** | Chain environment: Testnet, Mainnet, etc. | 
**transactionHash** | **String** | Unique transaction hash in the blockchain. | 
**blockNumber** | **Double** | Unique block number in the blockchain. | 
**type** | **String** | Transaction type: Mint, Transfer, Award, Airdrop, etc. | 
**method** | **String** | Function method name that was called in smart contract | 
**events** | **[String]** | List of events that were emitted in the transaction | 
**gameId** | **String** | The unique identifier of the game that the transaction is associated with. This allows developers to organize their transactions by game and helps with tracking and reporting. | 
**collectionId** | **String** | The unique identifier of the collection that the transaction is associated with. This allows developers to organize their transactions by game and helps with tracking and reporting. | 
**accountId** | **String** | The unique identifier of the account that the transaction belongs to. | 
**createdOn** | **Date** | The date when the collection was created. | 
**modifiedOn** | **Date** | The date when the collection was last modified. | 
**createdBy** | **String** | The Id of the user who created the collection. | 
**modifiedBy** | **String** | The Id of the user who last modified the collection. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


