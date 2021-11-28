# BSwapApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1BswapAddLiquidityPreviewGet**](BSwapApi.md#SapiV1BswapAddLiquidityPreviewGet) | **GET** /sapi/v1/bswap/addLiquidityPreview | Add Liquidity Preview (USER_DATA)
[**SapiV1BswapLiquidityAddPost**](BSwapApi.md#SapiV1BswapLiquidityAddPost) | **POST** /sapi/v1/bswap/liquidityAdd | Add Liquidity (TRADE)
[**SapiV1BswapLiquidityGet**](BSwapApi.md#SapiV1BswapLiquidityGet) | **GET** /sapi/v1/bswap/liquidity | Liquidity information of a pool (USER_DATA)
[**SapiV1BswapLiquidityOpsGet**](BSwapApi.md#SapiV1BswapLiquidityOpsGet) | **GET** /sapi/v1/bswap/liquidityOps | Liquidity Operation Record (USER_DATA)
[**SapiV1BswapLiquidityRemovePost**](BSwapApi.md#SapiV1BswapLiquidityRemovePost) | **POST** /sapi/v1/bswap/liquidityRemove | Remove Liquidity (TRADE)
[**SapiV1BswapPoolConfigureGet**](BSwapApi.md#SapiV1BswapPoolConfigureGet) | **GET** /sapi/v1/bswap/poolConfigure | Pool Configure (USER_DATA)
[**SapiV1BswapPoolsGet**](BSwapApi.md#SapiV1BswapPoolsGet) | **GET** /sapi/v1/bswap/pools | List All Swap Pools (MARKET_DATA)
[**SapiV1BswapQuoteGet**](BSwapApi.md#SapiV1BswapQuoteGet) | **GET** /sapi/v1/bswap/quote | Request Quote (USER_DATA)
[**SapiV1BswapRemoveLiquidityPreviewGet**](BSwapApi.md#SapiV1BswapRemoveLiquidityPreviewGet) | **GET** /sapi/v1/bswap/removeLiquidityPreview | Remove Liquidity Preview (USER_DATA)
[**SapiV1BswapSwapGet**](BSwapApi.md#SapiV1BswapSwapGet) | **GET** /sapi/v1/bswap/swap | Swap History (USER_DATA)
[**SapiV1BswapSwapPost**](BSwapApi.md#SapiV1BswapSwapPost) | **POST** /sapi/v1/bswap/swap | Swap (TRADE)


# **SapiV1BswapAddLiquidityPreviewGet**
> OneOfbswapAddLiquidityPreviewCombinationbswapAddLiquidityPreviewSingle SapiV1BswapAddLiquidityPreviewGet(pool.id, type, quote.asset, quote.qty, timestamp, signature, recv.window=var.recv.window)

Add Liquidity Preview (USER_DATA)

Calculate expected share amount for adding liquidity in single or dual token.  Weight(IP): 150

### Example
```R
library(binanceRapi)

var.pool.id <- 2 # integer | 
var.type <- 'SINGLE' # character | \"SINGLE\" for adding a single token;\"COMBINATION\" for adding dual tokens
var.quote.asset <- 'USDT' # character | 
var.quote.qty <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Add Liquidity Preview (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapAddLiquidityPreviewGet(var.pool.id, var.type, var.quote.asset, var.quote.qty, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool.id** | **integer**|  | 
 **type** | Enum [SINGLE, COMBINATION] | \&quot;SINGLE\&quot; for adding a single token;\&quot;COMBINATION\&quot; for adding dual tokens | 
 **quote.asset** | **character**|  | 
 **quote.qty** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfbswapAddLiquidityPreviewCombinationbswapAddLiquidityPreviewSingle**](oneOf&lt;bswapAddLiquidityPreviewCombination,bswapAddLiquidityPreviewSingle&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Add Liquidity Preview |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapLiquidityAddPost**
> InlineResponse200105 SapiV1BswapLiquidityAddPost(pool.id, asset, quantity, timestamp, signature, recv.window=var.recv.window)

Add Liquidity (TRADE)

Add liquidity to a pool.  Weight(UID): 1000 (Additional: 3 times one second)

### Example
```R
library(binanceRapi)

var.pool.id <- 56 # integer | 
var.asset <- 'BTC' # character | 
var.quantity <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Add Liquidity (TRADE)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapLiquidityAddPost(var.pool.id, var.asset, var.quantity, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool.id** | **integer**|  | 
 **asset** | **character**|  | 
 **quantity** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200105**](inline_response_200_105.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Operation Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapLiquidityGet**
> array[InlineResponse200104] SapiV1BswapLiquidityGet(timestamp, signature, pool.id=var.pool.id, recv.window=var.recv.window)

Liquidity information of a pool (USER_DATA)

Get liquidity information and user share of a pool.  Weight(IP):\\ `1`  for one pool;\\ `10` when the poolId parameter is omitted;

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.pool.id <- 56 # integer | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Liquidity information of a pool (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapLiquidityGet(var.timestamp, var.signature, pool.id=var.pool.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **pool.id** | **integer**|  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200104]**](inline_response_200_104.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Pool Liquidation information |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapLiquidityOpsGet**
> array[InlineResponse200106] SapiV1BswapLiquidityOpsGet(timestamp, signature, operation.id=var.operation.id, pool.id=var.pool.id, operation=var.operation, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Liquidity Operation Record (USER_DATA)

Get liquidity operation (add/remove) records.  Weight(UID): 3000

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.operation.id <- 56 # integer | 
var.pool.id <- 56 # integer | 
var.operation <- 'operation_example' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Liquidity Operation Record (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapLiquidityOpsGet(var.timestamp, var.signature, operation.id=var.operation.id, pool.id=var.pool.id, operation=var.operation, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **operation.id** | **integer**|  | [optional] 
 **pool.id** | **integer**|  | [optional] 
 **operation** | Enum [ADD, REMOVE] |  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200106]**](inline_response_200_106.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Liquidity Operation Record |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapLiquidityRemovePost**
> InlineResponse200105 SapiV1BswapLiquidityRemovePost(pool.id, type, share.amount, timestamp, signature, asset=var.asset, recv.window=var.recv.window)

Remove Liquidity (TRADE)

Remove liquidity from a pool, `type` include `SINGLE` and `COMBINATION`, asset is mandatory for single asset removal  Weight(UID): 1000 (Additional: 3 times one second)

### Example
```R
library(binanceRapi)

var.pool.id <- 56 # integer | 
var.type <- 'SINGLE' # character | Can be `SINGLE` for single asset removal, `COMBINATION` for combination of all coins removal
var.share.amount <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | Mandatory for single asset removal
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Remove Liquidity (TRADE)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapLiquidityRemovePost(var.pool.id, var.type, var.share.amount, var.timestamp, var.signature, asset=var.asset, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool.id** | **integer**|  | 
 **type** | Enum [SINGLE, COMBINATION] | Can be &#x60;SINGLE&#x60; for single asset removal, &#x60;COMBINATION&#x60; for combination of all coins removal | 
 **share.amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**| Mandatory for single asset removal | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200105**](inline_response_200_105.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Operation Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapPoolConfigureGet**
> array[InlineResponse200110] SapiV1BswapPoolConfigureGet(timestamp, signature, pool.id=var.pool.id, recv.window=var.recv.window)

Pool Configure (USER_DATA)

Weight(IP): 150

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.pool.id <- 2 # integer | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Pool Configure (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapPoolConfigureGet(var.timestamp, var.signature, pool.id=var.pool.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **pool.id** | **integer**|  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200110]**](inline_response_200_110.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Pool Information |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapPoolsGet**
> array[InlineResponse200103] SapiV1BswapPoolsGet()

List All Swap Pools (MARKET_DATA)

Get metadata about all swap pools.  Weight(IP): 1

### Example
```R
library(binanceRapi)


#List All Swap Pools (MARKET_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapPoolsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[InlineResponse200103]**](inline_response_200_103.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of Swap Pools |  -  |
| **400** | Bad Request |  -  |

# **SapiV1BswapQuoteGet**
> InlineResponse200107 SapiV1BswapQuoteGet(quote.asset, base.asset, quote.qty, timestamp, signature, recv.window=var.recv.window)

Request Quote (USER_DATA)

Request a quote for swap quote asset (selling asset) for base asset (buying asset), essentially price/exchange rates.  quoteQty is quantity of quote asset (to sell).  Please be noted the quote is for reference only, the actual price will change as the liquidity changes, it's recommended to swap immediate after request a quote for slippage prevention.  Weight(UID): 150

### Example
```R
library(binanceRapi)

var.quote.asset <- 'USDT' # character | 
var.base.asset <- 'BUSD' # character | 
var.quote.qty <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Request Quote (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapQuoteGet(var.quote.asset, var.base.asset, var.quote.qty, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quote.asset** | **character**|  | 
 **base.asset** | **character**|  | 
 **quote.qty** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200107**](inline_response_200_107.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Quote Info |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapRemoveLiquidityPreviewGet**
> OneOfbswapRmvLiquidityPreviewCombinationbswapRmvLiquidityPreviewSingle SapiV1BswapRemoveLiquidityPreviewGet(pool.id, type, quote.asset, share.amount, timestamp, signature, recv.window=var.recv.window)

Remove Liquidity Preview (USER_DATA)

Calculate the expected asset amount of single token redemption or dual token redemption.  Weight(IP): 150

### Example
```R
library(binanceRapi)

var.pool.id <- 2 # integer | 
var.type <- 'SINGLE' # character | Type is \"SINGLE\", remove and obtain a single token;Type is \"COMBINATION\", remove and obtain dual token.
var.quote.asset <- 'USDT' # character | 
var.share.amount <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Remove Liquidity Preview (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapRemoveLiquidityPreviewGet(var.pool.id, var.type, var.quote.asset, var.share.amount, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool.id** | **integer**|  | 
 **type** | Enum [SINGLE, COMBINATION] | Type is \&quot;SINGLE\&quot;, remove and obtain a single token;Type is \&quot;COMBINATION\&quot;, remove and obtain dual token. | 
 **quote.asset** | **character**|  | 
 **share.amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfbswapRmvLiquidityPreviewCombinationbswapRmvLiquidityPreviewSingle**](oneOf&lt;bswapRmvLiquidityPreviewCombination,bswapRmvLiquidityPreviewSingle&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Remove Liquidity Preview |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapSwapGet**
> array[InlineResponse200108] SapiV1BswapSwapGet(timestamp, signature, swap.id=var.swap.id, start.time=var.start.time, end.time=var.end.time, status=var.status, quote.asset=var.quote.asset, base.asset=var.base.asset, limit=var.limit, recv.window=var.recv.window)

Swap History (USER_DATA)

Get swap history.  Weight(UID): 3000

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.swap.id <- 56 # integer | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.status <- 56 # integer | 0: pending for swap, 1: success, 2: failed
var.quote.asset <- 'USDT' # character | 
var.base.asset <- 'BUSD' # character | 
var.limit <- 56 # integer | default 3, max 100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Swap History (USER_DATA)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapSwapGet(var.timestamp, var.signature, swap.id=var.swap.id, start.time=var.start.time, end.time=var.end.time, status=var.status, quote.asset=var.quote.asset, base.asset=var.base.asset, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **swap.id** | **integer**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **status** | Enum [0, 1, 2] | 0: pending for swap, 1: success, 2: failed | [optional] 
 **quote.asset** | **character**|  | [optional] 
 **base.asset** | **character**|  | [optional] 
 **limit** | **integer**| default 3, max 100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200108]**](inline_response_200_108.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Swap History |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BswapSwapPost**
> InlineResponse200109 SapiV1BswapSwapPost(quote.asset, base.asset, quote.qty, timestamp, signature, recv.window=var.recv.window)

Swap (TRADE)

Swap `quoteAsset` for `baseAsset`.  Weight(UID): 1000 (Additional: 3 times one second)

### Example
```R
library(binanceRapi)

var.quote.asset <- 'USDT' # character | 
var.base.asset <- 'BUSD' # character | 
var.quote.qty <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Swap (TRADE)
api.instance <- BSwapApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BswapSwapPost(var.quote.asset, var.base.asset, var.quote.qty, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quote.asset** | **character**|  | 
 **base.asset** | **character**|  | 
 **quote.qty** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200109**](inline_response_200_109.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Swap Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

