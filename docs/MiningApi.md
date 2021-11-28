# MiningApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1MiningHashTransferConfigCancelPost**](MiningApi.md#SapiV1MiningHashTransferConfigCancelPost) | **POST** /sapi/v1/mining/hash-transfer/config/cancel | Cancel Hashrate Resale configuration (USER_DATA)
[**SapiV1MiningHashTransferConfigDetailsListGet**](MiningApi.md#SapiV1MiningHashTransferConfigDetailsListGet) | **GET** /sapi/v1/mining/hash-transfer/config/details/list | Hashrate Resale List (USER_DATA)
[**SapiV1MiningHashTransferConfigPost**](MiningApi.md#SapiV1MiningHashTransferConfigPost) | **POST** /sapi/v1/mining/hash-transfer/config | Hashrate Resale Request (USER_DATA)
[**SapiV1MiningHashTransferProfitDetailsGet**](MiningApi.md#SapiV1MiningHashTransferProfitDetailsGet) | **GET** /sapi/v1/mining/hash-transfer/profit/details | Hashrate Resale Details (USER_DATA)
[**SapiV1MiningPaymentListGet**](MiningApi.md#SapiV1MiningPaymentListGet) | **GET** /sapi/v1/mining/payment/list | Earnings List (USER_DATA)
[**SapiV1MiningPaymentOtherGet**](MiningApi.md#SapiV1MiningPaymentOtherGet) | **GET** /sapi/v1/mining/payment/other | Extra Bonus List (USER_DATA)
[**SapiV1MiningPubAlgoListGet**](MiningApi.md#SapiV1MiningPubAlgoListGet) | **GET** /sapi/v1/mining/pub/algoList | Acquiring Algorithm (MARKET_DATA)
[**SapiV1MiningPubCoinListGet**](MiningApi.md#SapiV1MiningPubCoinListGet) | **GET** /sapi/v1/mining/pub/coinList | Acquiring CoinName (MARKET_DATA)
[**SapiV1MiningStatisticsUserListGet**](MiningApi.md#SapiV1MiningStatisticsUserListGet) | **GET** /sapi/v1/mining/statistics/user/list | Account List (USER_DATA)
[**SapiV1MiningStatisticsUserStatusGet**](MiningApi.md#SapiV1MiningStatisticsUserStatusGet) | **GET** /sapi/v1/mining/statistics/user/status | Statistic List (USER_DATA)
[**SapiV1MiningWorkerDetailGet**](MiningApi.md#SapiV1MiningWorkerDetailGet) | **GET** /sapi/v1/mining/worker/detail | Request for Detail Miner List (USER_DATA)
[**SapiV1MiningWorkerListGet**](MiningApi.md#SapiV1MiningWorkerListGet) | **GET** /sapi/v1/mining/worker/list | Request for Miner List (USER_DATA)


# **SapiV1MiningHashTransferConfigCancelPost**
> InlineResponse20094 SapiV1MiningHashTransferConfigCancelPost(config.id, user.name, timestamp, signature, recv.window=var.recv.window)

Cancel Hashrate Resale configuration (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.config.id <- 'config.id_example' # character | Mining ID
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Cancel Hashrate Resale configuration (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningHashTransferConfigCancelPost(var.config.id, var.user.name, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config.id** | **character**| Mining ID | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20094**](inline_response_200_94.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success flag |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningHashTransferConfigDetailsListGet**
> InlineResponse20091 SapiV1MiningHashTransferConfigDetailsListGet(timestamp, signature, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)

Hashrate Resale List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.page.index <- 56 # integer | Page number, default is first page, start form 1
var.page.size <- 'page.size_example' # character | Number of pages, minimum 10, maximum 200
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Hashrate Resale List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningHashTransferConfigDetailsListGet(var.timestamp, var.signature, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **page.index** | **integer**| Page number, default is first page, start form 1 | [optional] 
 **page.size** | **character**| Number of pages, minimum 10, maximum 200 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20091**](inline_response_200_91.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of hashrate resales |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningHashTransferConfigPost**
> InlineResponse20093 SapiV1MiningHashTransferConfigPost(user.name, algo, to.pool.user, hash.rate, timestamp, signature, start.date=var.start.date, end.date=var.end.date, recv.window=var.recv.window)

Hashrate Resale Request (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.user.name <- 'user.name_example' # character | Mining Account
var.algo <- 'algo_example' # character | Algorithm(sha256)
var.to.pool.user <- 'to.pool.user_example' # character | Mining Account
var.hash.rate <- 'hash.rate_example' # character | Resale hashrate h/s must be transferred (BTC is greater than 500000000000 ETH is greater than 500000)
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.start.date <- 'start.date_example' # character | Search date, millisecond timestamp, while empty query all
var.end.date <- 'end.date_example' # character | Search date, millisecond timestamp, while empty query all
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Hashrate Resale Request (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningHashTransferConfigPost(var.user.name, var.algo, var.to.pool.user, var.hash.rate, var.timestamp, var.signature, start.date=var.start.date, end.date=var.end.date, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.name** | **character**| Mining Account | 
 **algo** | **character**| Algorithm(sha256) | 
 **to.pool.user** | **character**| Mining Account | 
 **hash.rate** | **character**| Resale hashrate h/s must be transferred (BTC is greater than 500000000000 ETH is greater than 500000) | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **start.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **end.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20093**](inline_response_200_93.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Mining Account Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningHashTransferProfitDetailsGet**
> InlineResponse20092 SapiV1MiningHashTransferProfitDetailsGet(config.id, user.name, timestamp, signature, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)

Hashrate Resale Details (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.config.id <- 'config.id_example' # character | Mining ID
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.page.index <- 56 # integer | Page number, default is first page, start form 1
var.page.size <- 'page.size_example' # character | Number of pages, minimum 10, maximum 200
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Hashrate Resale Details (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningHashTransferProfitDetailsGet(var.config.id, var.user.name, var.timestamp, var.signature, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **config.id** | **character**| Mining ID | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **page.index** | **integer**| Page number, default is first page, start form 1 | [optional] 
 **page.size** | **character**| Number of pages, minimum 10, maximum 200 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20092**](inline_response_200_92.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of hashrate resale details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningPaymentListGet**
> InlineResponse20089 SapiV1MiningPaymentListGet(algo, user.name, timestamp, signature, coin=var.coin, start.date=var.start.date, end.date=var.end.date, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)

Earnings List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.coin <- 'BNB' # character | Coin name
var.start.date <- 'start.date_example' # character | Search date, millisecond timestamp, while empty query all
var.end.date <- 'end.date_example' # character | Search date, millisecond timestamp, while empty query all
var.page.index <- 56 # integer | Page number, default is first page, start form 1
var.page.size <- 'page.size_example' # character | Number of pages, minimum 10, maximum 200
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Earnings List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningPaymentListGet(var.algo, var.user.name, var.timestamp, var.signature, coin=var.coin, start.date=var.start.date, end.date=var.end.date, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **coin** | **character**| Coin name | [optional] 
 **start.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **end.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **page.index** | **integer**| Page number, default is first page, start form 1 | [optional] 
 **page.size** | **character**| Number of pages, minimum 10, maximum 200 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20089**](inline_response_200_89.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of earnings |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningPaymentOtherGet**
> InlineResponse20090 SapiV1MiningPaymentOtherGet(algo, user.name, timestamp, signature, coin=var.coin, start.date=var.start.date, end.date=var.end.date, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)

Extra Bonus List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.coin <- 'BNB' # character | Coin name
var.start.date <- 'start.date_example' # character | Search date, millisecond timestamp, while empty query all
var.end.date <- 'end.date_example' # character | Search date, millisecond timestamp, while empty query all
var.page.index <- 56 # integer | Page number, default is first page, start form 1
var.page.size <- 'page.size_example' # character | Number of pages, minimum 10, maximum 200
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Extra Bonus List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningPaymentOtherGet(var.algo, var.user.name, var.timestamp, var.signature, coin=var.coin, start.date=var.start.date, end.date=var.end.date, page.index=var.page.index, page.size=var.page.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **coin** | **character**| Coin name | [optional] 
 **start.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **end.date** | **character**| Search date, millisecond timestamp, while empty query all | [optional] 
 **page.index** | **integer**| Page number, default is first page, start form 1 | [optional] 
 **page.size** | **character**| Number of pages, minimum 10, maximum 200 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20090**](inline_response_200_90.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of extra bonuses |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningPubAlgoListGet**
> InlineResponse20085 SapiV1MiningPubAlgoListGet(timestamp, signature, recv.window=var.recv.window)

Acquiring Algorithm (MARKET_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Acquiring Algorithm (MARKET_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningPubAlgoListGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20085**](inline_response_200_85.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Algorithm information |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MiningPubCoinListGet**
> InlineResponse20086 SapiV1MiningPubCoinListGet(timestamp, signature, recv.window=var.recv.window)

Acquiring CoinName (MARKET_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Acquiring CoinName (MARKET_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningPubCoinListGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20086**](inline_response_200_86.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Coin information |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MiningStatisticsUserListGet**
> InlineResponse20096 SapiV1MiningStatisticsUserListGet(algo, user.name, timestamp, signature, recv.window=var.recv.window)

Account List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Account List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningStatisticsUserListGet(var.algo, var.user.name, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20096**](inline_response_200_96.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of mining accounts |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningStatisticsUserStatusGet**
> InlineResponse20095 SapiV1MiningStatisticsUserStatusGet(algo, user.name, timestamp, signature, recv.window=var.recv.window)

Statistic List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Statistic List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningStatisticsUserStatusGet(var.algo, var.user.name, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20095**](inline_response_200_95.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Mining account statistics |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningWorkerDetailGet**
> InlineResponse20087 SapiV1MiningWorkerDetailGet(algo, user.name, worker.name, timestamp, signature, recv.window=var.recv.window)

Request for Detail Miner List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.worker.name <- 'worker.name_example' # character | Miner’s name
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Request for Detail Miner List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningWorkerDetailGet(var.algo, var.user.name, var.worker.name, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **worker.name** | **character**| Miner’s name | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20087**](inline_response_200_87.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of workers&#39; hashrates&#39; |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MiningWorkerListGet**
> InlineResponse20088 SapiV1MiningWorkerListGet(algo, user.name, timestamp, signature, page.index=var.page.index, sort=var.sort, sort.column=var.sort.column, worker.status=var.worker.status, recv.window=var.recv.window)

Request for Miner List (USER_DATA)

Weight(IP): 5

### Example
```R
library(binanceRapi)

var.algo <- 'algo_example' # character | Algorithm(sha256)
var.user.name <- 'user.name_example' # character | Mining Account
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.page.index <- 56 # integer | Page number, default is first page, start form 1
var.sort <- 56 # integer | sort sequence（default=0）0 positive sequence, 1 negative sequence
var.sort.column <- 56 # integer | Sort by( default 1): 1: miner name, 2: real-time computing power, 3: daily average computing power, 4: real-time rejection rate, 5: last submission time
var.worker.status <- 56 # integer | miners status（default=0）0 all, 1 valid, 2 invalid, 3 failure
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Request for Miner List (USER_DATA)
api.instance <- MiningApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MiningWorkerListGet(var.algo, var.user.name, var.timestamp, var.signature, page.index=var.page.index, sort=var.sort, sort.column=var.sort.column, worker.status=var.worker.status, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **algo** | **character**| Algorithm(sha256) | 
 **user.name** | **character**| Mining Account | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **page.index** | **integer**| Page number, default is first page, start form 1 | [optional] 
 **sort** | **integer**| sort sequence（default&#x3D;0）0 positive sequence, 1 negative sequence | [optional] 
 **sort.column** | **integer**| Sort by( default 1): 1: miner name, 2: real-time computing power, 3: daily average computing power, 4: real-time rejection rate, 5: last submission time | [optional] 
 **worker.status** | **integer**| miners status（default&#x3D;0）0 all, 1 valid, 2 invalid, 3 failure | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20088**](inline_response_200_88.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of workers |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

