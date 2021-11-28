# MarginApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1BnbBurnGet**](MarginApi.md#SapiV1BnbBurnGet) | **GET** /sapi/v1/bnbBurn | Get All Isolated Margin Symbol(USER_DATA)
[**SapiV1BnbBurnPost**](MarginApi.md#SapiV1BnbBurnPost) | **POST** /sapi/v1/bnbBurn | Toggle BNB Burn On Spot Trade And Margin Interest (USER_DATA)
[**SapiV1MarginAccountGet**](MarginApi.md#SapiV1MarginAccountGet) | **GET** /sapi/v1/margin/account | Query Cross Margin Account Details (USER_DATA)
[**SapiV1MarginAllAssetsGet**](MarginApi.md#SapiV1MarginAllAssetsGet) | **GET** /sapi/v1/margin/allAssets | Get All Margin Assets (MARKET_DATA)
[**SapiV1MarginAllOrderListGet**](MarginApi.md#SapiV1MarginAllOrderListGet) | **GET** /sapi/v1/margin/allOrderList | Query Margin Account&#39;s all OCO (USER_DATA)
[**SapiV1MarginAllOrdersGet**](MarginApi.md#SapiV1MarginAllOrdersGet) | **GET** /sapi/v1/margin/allOrders | Query Margin Account&#39;s All Orders (USER_DATA)
[**SapiV1MarginAllPairsGet**](MarginApi.md#SapiV1MarginAllPairsGet) | **GET** /sapi/v1/margin/allPairs | Get All Cross Margin Pairs (MARKET_DATA)
[**SapiV1MarginAssetGet**](MarginApi.md#SapiV1MarginAssetGet) | **GET** /sapi/v1/margin/asset | Query Margin Asset (MARKET_DATA)
[**SapiV1MarginForceLiquidationRecGet**](MarginApi.md#SapiV1MarginForceLiquidationRecGet) | **GET** /sapi/v1/margin/forceLiquidationRec | Get Force Liquidation Record (USER_DATA)
[**SapiV1MarginInterestHistoryGet**](MarginApi.md#SapiV1MarginInterestHistoryGet) | **GET** /sapi/v1/margin/interestHistory | Get Interest History (USER_DATA)
[**SapiV1MarginInterestRateHistoryGet**](MarginApi.md#SapiV1MarginInterestRateHistoryGet) | **GET** /sapi/v1/margin/interestRateHistory | Margin Interest Rate History (USER_DATA)
[**SapiV1MarginIsolatedAccountDelete**](MarginApi.md#SapiV1MarginIsolatedAccountDelete) | **DELETE** /sapi/v1/margin/isolated/account | Disable Isolated Margin Account (TRADE)
[**SapiV1MarginIsolatedAccountGet**](MarginApi.md#SapiV1MarginIsolatedAccountGet) | **GET** /sapi/v1/margin/isolated/account | Query Isolated Margin Account Info (USER_DATA)
[**SapiV1MarginIsolatedAccountLimitGet**](MarginApi.md#SapiV1MarginIsolatedAccountLimitGet) | **GET** /sapi/v1/margin/isolated/accountLimit | Query Enabled Isolated Margin Account Limit (USER_DATA)
[**SapiV1MarginIsolatedAccountPost**](MarginApi.md#SapiV1MarginIsolatedAccountPost) | **POST** /sapi/v1/margin/isolated/account | Enable Isolated Margin Account (TRADE)
[**SapiV1MarginIsolatedAllPairsGet**](MarginApi.md#SapiV1MarginIsolatedAllPairsGet) | **GET** /sapi/v1/margin/isolated/allPairs | Get All Isolated Margin Symbol(USER_DATA)
[**SapiV1MarginIsolatedPairGet**](MarginApi.md#SapiV1MarginIsolatedPairGet) | **GET** /sapi/v1/margin/isolated/pair | Query Isolated Margin Symbol (USER_DATA)
[**SapiV1MarginIsolatedTransferGet**](MarginApi.md#SapiV1MarginIsolatedTransferGet) | **GET** /sapi/v1/margin/isolated/transfer | Get Isolated Margin Transfer History (USER_DATA)
[**SapiV1MarginIsolatedTransferPost**](MarginApi.md#SapiV1MarginIsolatedTransferPost) | **POST** /sapi/v1/margin/isolated/transfer | Isolated Margin Account Transfer (MARGIN)
[**SapiV1MarginLoanGet**](MarginApi.md#SapiV1MarginLoanGet) | **GET** /sapi/v1/margin/loan | Query Loan Record (USER_DATA)
[**SapiV1MarginLoanPost**](MarginApi.md#SapiV1MarginLoanPost) | **POST** /sapi/v1/margin/loan | Margin Account Borrow (MARGIN)
[**SapiV1MarginMaxBorrowableGet**](MarginApi.md#SapiV1MarginMaxBorrowableGet) | **GET** /sapi/v1/margin/maxBorrowable | Query Max Borrow (USER_DATA)
[**SapiV1MarginMaxTransferableGet**](MarginApi.md#SapiV1MarginMaxTransferableGet) | **GET** /sapi/v1/margin/maxTransferable | Query Max Transfer-Out Amount (USER_DATA)
[**SapiV1MarginMyTradesGet**](MarginApi.md#SapiV1MarginMyTradesGet) | **GET** /sapi/v1/margin/myTrades | Query Margin Account&#39;s Trade List (USER_DATA)
[**SapiV1MarginOpenOrderListGet**](MarginApi.md#SapiV1MarginOpenOrderListGet) | **GET** /sapi/v1/margin/openOrderList | Query Margin Account&#39;s Open OCO (USER_DATA)
[**SapiV1MarginOpenOrdersDelete**](MarginApi.md#SapiV1MarginOpenOrdersDelete) | **DELETE** /sapi/v1/margin/openOrders | Margin Account Cancel all Open Orders on a Symbol (TRADE)
[**SapiV1MarginOpenOrdersGet**](MarginApi.md#SapiV1MarginOpenOrdersGet) | **GET** /sapi/v1/margin/openOrders | Query Margin Account&#39;s Open Orders (USER_DATA)
[**SapiV1MarginOrderDelete**](MarginApi.md#SapiV1MarginOrderDelete) | **DELETE** /sapi/v1/margin/order | Margin Account Cancel Order (TRADE)
[**SapiV1MarginOrderGet**](MarginApi.md#SapiV1MarginOrderGet) | **GET** /sapi/v1/margin/order | Query Margin Account&#39;s Order (USER_DATA)
[**SapiV1MarginOrderListDelete**](MarginApi.md#SapiV1MarginOrderListDelete) | **DELETE** /sapi/v1/margin/orderList | Margin Account Cancel OCO (TRADE)
[**SapiV1MarginOrderListGet**](MarginApi.md#SapiV1MarginOrderListGet) | **GET** /sapi/v1/margin/orderList | Query Margin Account&#39;s OCO (USER_DATA)
[**SapiV1MarginOrderOcoPost**](MarginApi.md#SapiV1MarginOrderOcoPost) | **POST** /sapi/v1/margin/order/oco | Margin Account New OCO (TRADE)
[**SapiV1MarginOrderPost**](MarginApi.md#SapiV1MarginOrderPost) | **POST** /sapi/v1/margin/order | Margin Account New Order (TRADE)
[**SapiV1MarginPairGet**](MarginApi.md#SapiV1MarginPairGet) | **GET** /sapi/v1/margin/pair | Query Cross Margin Pair (MARKET_DATA)
[**SapiV1MarginPriceIndexGet**](MarginApi.md#SapiV1MarginPriceIndexGet) | **GET** /sapi/v1/margin/priceIndex | Query Margin PriceIndex (MARKET_DATA)
[**SapiV1MarginRepayGet**](MarginApi.md#SapiV1MarginRepayGet) | **GET** /sapi/v1/margin/repay | Query Repay Record (USER_DATA)
[**SapiV1MarginRepayPost**](MarginApi.md#SapiV1MarginRepayPost) | **POST** /sapi/v1/margin/repay | Margin Account Repay (MARGIN)
[**SapiV1MarginTransferGet**](MarginApi.md#SapiV1MarginTransferGet) | **GET** /sapi/v1/margin/transfer | Get Cross Margin Transfer History (USER_DATA)
[**SapiV1MarginTransferPost**](MarginApi.md#SapiV1MarginTransferPost) | **POST** /sapi/v1/margin/transfer | Cross Margin Account Transfer (MARGIN)


# **SapiV1BnbBurnGet**
> BnbBurnStatus SapiV1BnbBurnGet(timestamp, signature, recv.window=var.recv.window)

Get All Isolated Margin Symbol(USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get All Isolated Margin Symbol(USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BnbBurnGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**BnbBurnStatus**](bnbBurnStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status on BNB to pay for trading fees |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BnbBurnPost**
> BnbBurnStatus SapiV1BnbBurnPost(timestamp, signature, spot.bnb.burn=var.spot.bnb.burn, interest.bnb.burn=var.interest.bnb.burn, recv.window=var.recv.window)

Toggle BNB Burn On Spot Trade And Margin Interest (USER_DATA)

- \"spotBNBBurn\" and \"interestBNBBurn\" should be sent at least one.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.spot.bnb.burn <- 'true' # character | Determines whether to use BNB to pay for trading fees on SPOT
var.interest.bnb.burn <- 'false' # character | Determines whether to use BNB to pay for margin loan's interest
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Toggle BNB Burn On Spot Trade And Margin Interest (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BnbBurnPost(var.timestamp, var.signature, spot.bnb.burn=var.spot.bnb.burn, interest.bnb.burn=var.interest.bnb.burn, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **spot.bnb.burn** | Enum [true, false] | Determines whether to use BNB to pay for trading fees on SPOT | [optional] 
 **interest.bnb.burn** | Enum [true, false] | Determines whether to use BNB to pay for margin loan&#39;s interest | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**BnbBurnStatus**](bnbBurnStatus.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Status on BNB to pay for trading fees |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginAccountGet**
> InlineResponse20019 SapiV1MarginAccountGet(timestamp, signature, recv.window=var.recv.window)

Query Cross Margin Account Details (USER_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Cross Margin Account Details (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAccountGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20019**](inline_response_200_19.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin account details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginAllAssetsGet**
> array[InlineResponse20014] SapiV1MarginAllAssetsGet()

Get All Margin Assets (MARKET_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)


#Get All Margin Assets (MARKET_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAllAssetsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[InlineResponse20014]**](inline_response_200_14.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Assets details |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MarginAllOrderListGet**
> array[InlineResponse2006] SapiV1MarginAllOrderListGet(timestamp, signature, is.isolated=var.is.isolated, symbol=var.symbol, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Query Margin Account's all OCO (USER_DATA)

Retrieves all OCO for a specific margin account based on provided optional parameters  Weight(IP): 200

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.symbol <- 'symbol_example' # character | Mandatory for isolated margin, not supported for cross margin
var.from.id <- 'from.id_example' # character | If supplied, neither `startTime` or `endTime` can be provided
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 56 # integer | Default Value: 500; Max Value: 1000
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's all OCO (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAllOrderListGet(var.timestamp, var.signature, is.isolated=var.is.isolated, symbol=var.symbol, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **symbol** | **character**| Mandatory for isolated margin, not supported for cross margin | [optional] 
 **from.id** | **character**| If supplied, neither &#x60;startTime&#x60; or &#x60;endTime&#x60; can be provided | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default Value: 500; Max Value: 1000 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse2006]**](inline_response_200_6.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of Margin OCO orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginAllOrdersGet**
> array[MarginOrderDetail] SapiV1MarginAllOrdersGet(symbol, timestamp, signature, is.isolated=var.is.isolated, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Query Margin Account's All Orders (USER_DATA)

- If `orderId` is set, it will get orders >= that orderId. Otherwise most recent orders are returned. - For some historical orders `cummulativeQuoteQty` will be < 0, meaning the data is not available at this time.  Weight(IP): 200  Request Limit: 60 times/min per IP

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.order.id <- 56 # integer | Order id
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's All Orders (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAllOrdersGet(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **order.id** | **integer**| Order id | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[MarginOrderDetail]**](marginOrderDetail.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin order list |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginAllPairsGet**
> array[InlineResponse20015] SapiV1MarginAllPairsGet()

Get All Cross Margin Pairs (MARKET_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)


#Get All Cross Margin Pairs (MARKET_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAllPairsGet()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[InlineResponse20015]**](inline_response_200_15.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin pairs |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MarginAssetGet**
> InlineResponse20012 SapiV1MarginAssetGet(asset)

Query Margin Asset (MARKET_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 

#Query Margin Asset (MARKET_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginAssetGet(var.asset)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 

### Return type

[**InlineResponse20012**](inline_response_200_12.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Asset details |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MarginForceLiquidationRecGet**
> InlineResponse20018 SapiV1MarginForceLiquidationRecGet(timestamp, signature, start.time=var.start.time, end.time=var.end.time, isolated.symbol=var.isolated.symbol, current=var.current, size=var.size, recv.window=var.recv.window)

Get Force Liquidation Record (USER_DATA)

- Response in descending order  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Force Liquidation Record (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginForceLiquidationRecGet(var.timestamp, var.signature, start.time=var.start.time, end.time=var.end.time, isolated.symbol=var.isolated.symbol, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20018**](inline_response_200_18.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Force Liquidation History, response in descending order |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginInterestHistoryGet**
> InlineResponse20017 SapiV1MarginInterestHistoryGet(timestamp, signature, asset=var.asset, isolated.symbol=var.isolated.symbol, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)

Get Interest History (USER_DATA)

- Response in descending order - If `isolatedSymbol` is not sent, crossed margin data will be returned - Set `archived` to `true` to query data from 6 months ago - `type` in response has 4 enums:   - `PERIODIC` interest charged per hour   - `ON_BORROW` first interest charged on borrow   - `PERIODIC_CONVERTED` interest charged per hour converted into BNB   - `ON_BORROW_CONVERTED` first interest charged on borrow converted into BNB  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.archived <- 'archived_example' # character | Default: false. Set to true for archived data from 6 months ago
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Interest History (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginInterestHistoryGet(var.timestamp, var.signature, asset=var.asset, isolated.symbol=var.isolated.symbol, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **archived** | **character**| Default: false. Set to true for archived data from 6 months ago | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20017**](inline_response_200_17.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Interest History, response in descending order |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginInterestRateHistoryGet**
> array[InlineResponse20028] SapiV1MarginInterestRateHistoryGet(asset, timestamp, signature, vip.level=var.vip.level, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Margin Interest Rate History (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.vip.level <- 1 # integer | Defaults to user's vip level
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Interest Rate History (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginInterestRateHistoryGet(var.asset, var.timestamp, var.signature, vip.level=var.vip.level, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **vip.level** | **integer**| Defaults to user&#39;s vip level | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20028]**](inline_response_200_28.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin Interest Rate History |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedAccountDelete**
> InlineResponse20025 SapiV1MarginIsolatedAccountDelete(symbol, timestamp, signature, recv.window=var.recv.window)

Disable Isolated Margin Account (TRADE)

Disable isolated margin account for a specific symbol. Each trading pair can only be deactivated once every 24 hours .  Weight(UID): 300

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Disable Isolated Margin Account (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedAccountDelete(var.symbol, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20025**](inline_response_200_25.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated Margin Account status |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedAccountGet**
> IsolatedMarginAccountInfo SapiV1MarginIsolatedAccountGet(timestamp, signature, symbols=var.symbols, recv.window=var.recv.window)

Query Isolated Margin Account Info (USER_DATA)

- If \"symbols\" is not sent, all isolated assets will be returned. - If \"symbols\" is sent, only the isolated assets of the sent symbols will be returned.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.symbols <- 'BTCUSDT,BNBUSDT,ADAUSDT' # character | Max 5 symbols can be sent; separated by ','
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Isolated Margin Account Info (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedAccountGet(var.timestamp, var.signature, symbols=var.symbols, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **symbols** | **character**| Max 5 symbols can be sent; separated by &#39;,&#39; | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**IsolatedMarginAccountInfo**](isolatedMarginAccountInfo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated Margin Account Info when \&quot;symbols\&quot; is not sent |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedAccountLimitGet**
> InlineResponse20026 SapiV1MarginIsolatedAccountLimitGet(timestamp, signature, recv.window=var.recv.window)

Query Enabled Isolated Margin Account Limit (USER_DATA)

Query enabled isolated margin account limit.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Enabled Isolated Margin Account Limit (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedAccountLimitGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20026**](inline_response_200_26.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Number of enabled Isolated Margin Account and its limit |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedAccountPost**
> InlineResponse20025 SapiV1MarginIsolatedAccountPost(symbol, timestamp, signature, recv.window=var.recv.window)

Enable Isolated Margin Account (TRADE)

Enable isolated margin account for a specific symbol.  Weight(UID): 300

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Enable Isolated Margin Account (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedAccountPost(var.symbol, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20025**](inline_response_200_25.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated Margin Account status |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedAllPairsGet**
> array[InlineResponse20027] SapiV1MarginIsolatedAllPairsGet(timestamp, signature, recv.window=var.recv.window)

Get All Isolated Margin Symbol(USER_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get All Isolated Margin Symbol(USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedAllPairsGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20027]**](inline_response_200_27.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | All Isolated Margin Symbols |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedPairGet**
> InlineResponse20027 SapiV1MarginIsolatedPairGet(symbol, timestamp, signature, recv.window=var.recv.window)

Query Isolated Margin Symbol (USER_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Isolated Margin Symbol (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedPairGet(var.symbol, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20027**](inline_response_200_27.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated Margin Symbol |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedTransferGet**
> MarginTransferDetails SapiV1MarginIsolatedTransferGet(symbol, timestamp, signature, asset=var.asset, trans.from=var.trans.from, trans.to=var.trans.to, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)

Get Isolated Margin Transfer History (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.trans.from <- 'SPOT' # character | 
var.trans.to <- 'ISOLATED_MARGIN' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Isolated Margin Transfer History (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedTransferGet(var.symbol, var.timestamp, var.signature, asset=var.asset, trans.from=var.trans.from, trans.to=var.trans.to, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **trans.from** | Enum [SPOT, ISOLATED_MARGIN] |  | [optional] 
 **trans.to** | Enum [SPOT, ISOLATED_MARGIN] |  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**MarginTransferDetails**](marginTransferDetails.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated Margin Transfer History |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginIsolatedTransferPost**
> object SapiV1MarginIsolatedTransferPost(asset, symbol, amount, timestamp, signature, trans.from=var.trans.from, trans.to=var.trans.to, recv.window=var.recv.window)

Isolated Margin Account Transfer (MARGIN)

Weight(UID): 600

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.trans.from <- 'SPOT' # character | 
var.trans.to <- 'ISOLATED_MARGIN' # character | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Isolated Margin Account Transfer (MARGIN)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginIsolatedTransferPost(var.asset, var.symbol, var.amount, var.timestamp, var.signature, trans.from=var.trans.from, trans.to=var.trans.to, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **trans.from** | Enum [SPOT, ISOLATED_MARGIN] |  | [optional] 
 **trans.to** | Enum [SPOT, ISOLATED_MARGIN] |  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

**object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transaction Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginLoanGet**
> InlineResponse20010 SapiV1MarginLoanGet(asset, timestamp, signature, isolated.symbol=var.isolated.symbol, tx.id=var.tx.id, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)

Query Loan Record (USER_DATA)

- `txId` or `startTime` must be sent. `txId` takes precedence. - Response in descending order - If `isolatedSymbol` is not sent, crossed margin data will be returned - Set `archived` to `true` to query data from 6 months ago  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.tx.id <- 123456789 # integer | the tranId in  `POST /sapi/v1/margin/loan`
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.archived <- 'archived_example' # character | Default: false. Set to true for archived data from 6 months ago
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Loan Record (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginLoanGet(var.asset, var.timestamp, var.signature, isolated.symbol=var.isolated.symbol, tx.id=var.tx.id, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **tx.id** | **integer**| the tranId in  &#x60;POST /sapi/v1/margin/loan&#x60; | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **archived** | **character**| Default: false. Set to true for archived data from 6 months ago | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20010**](inline_response_200_10.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Loan records |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginLoanPost**
> Transaction SapiV1MarginLoanPost(asset, amount, timestamp, signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)

Margin Account Borrow (MARGIN)

Apply for a loan.  - If \"isIsolated\" = \"TRUE\", \"symbol\" must be sent - \"isIsolated\" = \"FALSE\" for crossed margin loan  Weight(UID): 3000

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account Borrow (MARGIN)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginLoanPost(var.asset, var.amount, var.timestamp, var.signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**Transaction**](transaction.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transaction id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginMaxBorrowableGet**
> InlineResponse20023 SapiV1MarginMaxBorrowableGet(asset, timestamp, signature, isolated.symbol=var.isolated.symbol, recv.window=var.recv.window)

Query Max Borrow (USER_DATA)

- If `isolatedSymbol` is not sent, crossed margin data will be sent. - `borrowLimit` is also available from https://www.binance.com/en/margin-fee  Weight(IP): 50

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Max Borrow (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginMaxBorrowableGet(var.asset, var.timestamp, var.signature, isolated.symbol=var.isolated.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20023**](inline_response_200_23.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details on max borrow amount |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginMaxTransferableGet**
> InlineResponse20024 SapiV1MarginMaxTransferableGet(asset, timestamp, signature, isolated.symbol=var.isolated.symbol, recv.window=var.recv.window)

Query Max Transfer-Out Amount (USER_DATA)

- If `isolatedSymbol` is not sent, crossed margin data will be sent.  Weight(IP): 50

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Max Transfer-Out Amount (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginMaxTransferableGet(var.asset, var.timestamp, var.signature, isolated.symbol=var.isolated.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20024**](inline_response_200_24.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Details on max transferable amount |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginMyTradesGet**
> array[MarginTrade] SapiV1MarginMyTradesGet(symbol, timestamp, signature, is.isolated=var.is.isolated, start.time=var.start.time, end.time=var.end.time, from.id=var.from.id, limit=var.limit, recv.window=var.recv.window)

Query Margin Account's Trade List (USER_DATA)

- If `fromId` is set, it will get orders >= that `fromId`. Otherwise most recent trades are returned.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.from.id <- 56 # integer | Trade id to fetch from. Default gets most recent trades.
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's Trade List (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginMyTradesGet(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, start.time=var.start.time, end.time=var.end.time, from.id=var.from.id, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **from.id** | **integer**| Trade id to fetch from. Default gets most recent trades. | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[MarginTrade]**](marginTrade.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of margin trades |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOpenOrderListGet**
> array[InlineResponse20022] SapiV1MarginOpenOrderListGet(timestamp, signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)

Query Margin Account's Open OCO (USER_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.symbol <- 'symbol_example' # character | Mandatory for isolated margin, not supported for cross margin
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's Open OCO (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOpenOrderListGet(var.timestamp, var.signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **symbol** | **character**| Mandatory for isolated margin, not supported for cross margin | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20022]**](inline_response_200_22.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of Open Margin OCO orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOpenOrdersDelete**
> array[AnyOfcanceledMarginOrderDetailmarginOcoOrder] SapiV1MarginOpenOrdersDelete(symbol, timestamp, signature, is.isolated=var.is.isolated, recv.window=var.recv.window)

Margin Account Cancel all Open Orders on a Symbol (TRADE)

- Cancels all active orders on a symbol for margin account. - This includes OCO orders.  Weight(IP): 1 

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account Cancel all Open Orders on a Symbol (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOpenOrdersDelete(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[AnyOfcanceledMarginOrderDetailmarginOcoOrder]**](anyOf&lt;canceledMarginOrderDetail,marginOcoOrder&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled margin orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOpenOrdersGet**
> array[MarginOrderDetail] SapiV1MarginOpenOrdersGet(timestamp, signature, symbol=var.symbol, is.isolated=var.is.isolated, recv.window=var.recv.window)

Query Margin Account's Open Orders (USER_DATA)

- If the `symbol` is not sent, orders for all symbols will be returned in an array. - When all symbols are returned, the number of requests counted against the rate limiter is equal to the number of symbols currently trading on the exchange - If isIsolated =\"TRUE\", symbol must be sent.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's Open Orders (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOpenOrdersGet(var.timestamp, var.signature, symbol=var.symbol, is.isolated=var.is.isolated, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[MarginOrderDetail]**](marginOrderDetail.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin open orders list |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderDelete**
> MarginOrder SapiV1MarginOrderDelete(symbol, timestamp, signature, is.isolated=var.is.isolated, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)

Margin Account Cancel Order (TRADE)

Cancel an active order for margin account.  Either `orderId` or `origClientOrderId` must be sent.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.order.id <- 56 # integer | Order id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account Cancel Order (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderDelete(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **order.id** | **integer**| Order id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**MarginOrder**](marginOrder.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled margin order details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderGet**
> MarginOrderDetail SapiV1MarginOrderGet(symbol, timestamp, signature, is.isolated=var.is.isolated, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)

Query Margin Account's Order (USER_DATA)

- Either `orderId` or `origClientOrderId` must be sent. - For some historical orders `cummulativeQuoteQty` will be < 0, meaning the data is not available at this time.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.order.id <- 56 # integer | Order id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's Order (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderGet(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **order.id** | **integer**| Order id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**MarginOrderDetail**](marginOrderDetail.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Interest History, response in descending order |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderListDelete**
> MarginOcoOrder SapiV1MarginOrderListDelete(symbol, timestamp, signature, is.isolated=var.is.isolated, order.list.id=var.order.list.id, list.client.order.id=var.list.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)

Margin Account Cancel OCO (TRADE)

Cancel an entire Order List for a margin account  - Canceling an individual leg will cancel the entire OCO - Either `orderListId` or `listClientOrderId` must be provided  Weight(UID): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.order.list.id <- 56 # integer | Order list id
var.list.client.order.id <- 'list.client.order.id_example' # character | A unique Id for the entire orderList
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account Cancel OCO (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderListDelete(var.symbol, var.timestamp, var.signature, is.isolated=var.is.isolated, order.list.id=var.order.list.id, list.client.order.id=var.list.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **order.list.id** | **integer**| Order list id | [optional] 
 **list.client.order.id** | **character**| A unique Id for the entire orderList | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**MarginOcoOrder**](marginOcoOrder.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin OCO details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderListGet**
> InlineResponse20021 SapiV1MarginOrderListGet(timestamp, signature, is.isolated=var.is.isolated, symbol=var.symbol, order.list.id=var.order.list.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)

Query Margin Account's OCO (USER_DATA)

Retrieves a specific OCO based on provided optional parameters  - Either `orderListId` or `origClientOrderId` must be provided  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.symbol <- 'symbol_example' # character | Mandatory for isolated margin, not supported for cross margin
var.order.list.id <- 56 # integer | Order list id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Margin Account's OCO (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderListGet(var.timestamp, var.signature, is.isolated=var.is.isolated, symbol=var.symbol, order.list.id=var.order.list.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **symbol** | **character**| Mandatory for isolated margin, not supported for cross margin | [optional] 
 **order.list.id** | **integer**| Order list id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20021**](inline_response_200_21.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin OCO details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderOcoPost**
> InlineResponse20020 SapiV1MarginOrderOcoPost(symbol, side, quantity, price, stop.price, timestamp, signature, is.isolated=var.is.isolated, list.client.order.id=var.list.client.order.id, limit.client.order.id=var.limit.client.order.id, limit.iceberg.qty=var.limit.iceberg.qty, stop.client.order.id=var.stop.client.order.id, stop.limit.price=var.stop.limit.price, stop.iceberg.qty=var.stop.iceberg.qty, stop.limit.time.in.force=var.stop.limit.time.in.force, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, recv.window=var.recv.window)

Margin Account New OCO (TRADE)

Send in a new OCO for a margin account  - Price Restrictions:   - SELL: Limit Price > Last Price > Stop Price   - BUY: Limit Price < Last Price < Stop Price - Quantity Restrictions:   - Both legs must have the same quantity   - ICEBERG quantities however do not have to be the same. - Order Rate Limit   - OCO counts as 2 orders against the order rate limit.  Weight(UID): 6

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.side <- 'SELL' # character | SELL or BUY
var.quantity <- 3.4 # numeric | 
var.price <- 3.4 # numeric | Order price
var.stop.price <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.list.client.order.id <- 'list.client.order.id_example' # character | A unique Id for the entire orderList
var.limit.client.order.id <- 'limit.client.order.id_example' # character | A unique Id for the limit order
var.limit.iceberg.qty <- 3.4 # numeric | 
var.stop.client.order.id <- 'stop.client.order.id_example' # character | A unique Id for the stop loss/stop loss limit leg
var.stop.limit.price <- 3.4 # numeric | If provided, stopLimitTimeInForce is required.
var.stop.iceberg.qty <- 3.4 # numeric | 
var.stop.limit.time.in.force <- 'stop.limit.time.in.force_example' # character | 
var.new.order.resp.type <- 'new.order.resp.type_example' # character | Set the response JSON.
var.side.effect.type <- 'side.effect.type_example' # character | Default NO_SIDE_EFFECT
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account New OCO (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderOcoPost(var.symbol, var.side, var.quantity, var.price, var.stop.price, var.timestamp, var.signature, is.isolated=var.is.isolated, list.client.order.id=var.list.client.order.id, limit.client.order.id=var.limit.client.order.id, limit.iceberg.qty=var.limit.iceberg.qty, stop.client.order.id=var.stop.client.order.id, stop.limit.price=var.stop.limit.price, stop.iceberg.qty=var.stop.iceberg.qty, stop.limit.time.in.force=var.stop.limit.time.in.force, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **side** | Enum [SELL, BUY] | SELL or BUY | 
 **quantity** | **numeric**|  | 
 **price** | **numeric**| Order price | 
 **stop.price** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **list.client.order.id** | **character**| A unique Id for the entire orderList | [optional] 
 **limit.client.order.id** | **character**| A unique Id for the limit order | [optional] 
 **limit.iceberg.qty** | **numeric**|  | [optional] 
 **stop.client.order.id** | **character**| A unique Id for the stop loss/stop loss limit leg | [optional] 
 **stop.limit.price** | **numeric**| If provided, stopLimitTimeInForce is required. | [optional] 
 **stop.iceberg.qty** | **numeric**|  | [optional] 
 **stop.limit.time.in.force** | Enum [GTC, FOK, IOC] |  | [optional] 
 **new.order.resp.type** | Enum [ACK, RESULT, FULL] | Set the response JSON. | [optional] 
 **side.effect.type** | Enum [NO_SIDE_EFFECT, MARGIN_BUY, AUTO_REPAY] | Default NO_SIDE_EFFECT | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20020**](inline_response_200_20.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | New Margin OCO details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginOrderPost**
> OneOfmarginOrderResponseAckmarginOrderResponseResultmarginOrderResponseFull SapiV1MarginOrderPost(symbol, side, type, quantity, timestamp, signature, is.isolated=var.is.isolated, quote.order.qty=var.quote.order.qty, price=var.price, stop.price=var.stop.price, new.client.order.id=var.new.client.order.id, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, time.in.force=var.time.in.force, recv.window=var.recv.window)

Margin Account New Order (TRADE)

Post a new order for margin account.  Weight(UID): 6

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.side <- 'SELL' # character | SELL or BUY
var.type <- 'type_example' # character | Order type
var.quantity <- 3.4 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.quote.order.qty <- 3.4 # numeric | Quote quantity
var.price <- 3.4 # numeric | Order price
var.stop.price <- 20.01 # numeric | Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders.
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.iceberg.qty <- 3.4 # numeric | Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order.
var.new.order.resp.type <- 'new.order.resp.type_example' # character | Set the response JSON.
var.side.effect.type <- 'side.effect.type_example' # character | Default NO_SIDE_EFFECT
var.time.in.force <- 'time.in.force_example' # character | Order time in force
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account New Order (TRADE)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginOrderPost(var.symbol, var.side, var.type, var.quantity, var.timestamp, var.signature, is.isolated=var.is.isolated, quote.order.qty=var.quote.order.qty, price=var.price, stop.price=var.stop.price, new.client.order.id=var.new.client.order.id, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, time.in.force=var.time.in.force, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **side** | Enum [SELL, BUY] | SELL or BUY | 
 **type** | Enum [LIMIT, MARKET, STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, TAKE_PROFIT_LIMIT, LIMIT_MAKER] | Order type | 
 **quantity** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **quote.order.qty** | **numeric**| Quote quantity | [optional] 
 **price** | **numeric**| Order price | [optional] 
 **stop.price** | **numeric**| Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders. | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **iceberg.qty** | **numeric**| Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order. | [optional] 
 **new.order.resp.type** | Enum [ACK, RESULT, FULL] | Set the response JSON. | [optional] 
 **side.effect.type** | Enum [NO_SIDE_EFFECT, MARGIN_BUY, AUTO_REPAY] | Default NO_SIDE_EFFECT | [optional] 
 **time.in.force** | Enum [GTC, IOC, FOK] | Order time in force | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfmarginOrderResponseAckmarginOrderResponseResultmarginOrderResponseFull**](oneOf&lt;marginOrderResponseAck,marginOrderResponseResult,marginOrderResponseFull&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin order info |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginPairGet**
> InlineResponse20013 SapiV1MarginPairGet(symbol)

Query Cross Margin Pair (MARKET_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#Query Cross Margin Pair (MARKET_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginPairGet(var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 

### Return type

[**InlineResponse20013**](inline_response_200_13.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin pair details |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MarginPriceIndexGet**
> InlineResponse20016 SapiV1MarginPriceIndexGet(symbol)

Query Margin PriceIndex (MARKET_DATA)

Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT

#Query Margin PriceIndex (MARKET_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginPriceIndexGet(var.symbol)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 

### Return type

[**InlineResponse20016**](inline_response_200_16.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Price index |  -  |
| **400** | Bad Request |  -  |

# **SapiV1MarginRepayGet**
> InlineResponse20011 SapiV1MarginRepayGet(asset, timestamp, signature, isolated.symbol=var.isolated.symbol, tx.id=var.tx.id, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)

Query Repay Record (USER_DATA)

- `txId` or `startTime` must be sent. `txId` takes precedence. - Response in descending order - If `isolatedSymbol` is not sent, crossed margin data will be returned - Set `archived` to `true` to query data from 6 months ago  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.isolated.symbol <- 'isolated.symbol_example' # character | Isolated symbol
var.tx.id <- 2970933056 # integer | the tranId in  `POST /sapi/v1/margin/repay`
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.archived <- 'archived_example' # character | Default: false. Set to true for archived data from 6 months ago
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Repay Record (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginRepayGet(var.asset, var.timestamp, var.signature, isolated.symbol=var.isolated.symbol, tx.id=var.tx.id, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **isolated.symbol** | **character**| Isolated symbol | [optional] 
 **tx.id** | **integer**| the tranId in  &#x60;POST /sapi/v1/margin/repay&#x60; | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **archived** | **character**| Default: false. Set to true for archived data from 6 months ago | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20011**](inline_response_200_11.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Load records |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginRepayPost**
> Transaction SapiV1MarginRepayPost(asset, amount, timestamp, signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)

Margin Account Repay (MARGIN)

Repay loan for margin account.  - If \"isIsolated\" = \"TRUE\", \"symbol\" must be sent - \"isIsolated\" = \"FALSE\" for crossed margin repay  Weight(IP): 3000

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.is.isolated <- 'is.isolated_example' # character | For isolated margin or not, 'TRUE', 'FALSE', default 'FALSE'
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Margin Account Repay (MARGIN)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginRepayPost(var.asset, var.amount, var.timestamp, var.signature, is.isolated=var.is.isolated, symbol=var.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **is.isolated** | Enum [TRUE, FALSE] | For isolated margin or not, &#39;TRUE&#39;, &#39;FALSE&#39;, default &#39;FALSE&#39; | [optional] 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**Transaction**](transaction.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transaction id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginTransferGet**
> InlineResponse2009 SapiV1MarginTransferGet(timestamp, signature, asset=var.asset, type=var.type, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)

Get Cross Margin Transfer History (USER_DATA)

- Response in descending order - Returns data for last 7 days by default - Set `archived` to `true` to query data from 6 months ago  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.type <- 'type_example' # character | Tranfer Type
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.archived <- 'archived_example' # character | Default: false. Set to true for archived data from 6 months ago
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Cross Margin Transfer History (USER_DATA)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginTransferGet(var.timestamp, var.signature, asset=var.asset, type=var.type, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, archived=var.archived, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **type** | Enum [ROLL_IN, ROLL_OUT] | Tranfer Type | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **archived** | **character**| Default: false. Set to true for archived data from 6 months ago | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse2009**](inline_response_200_9.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin account transfer history, response in descending order |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1MarginTransferPost**
> Transaction SapiV1MarginTransferPost(asset, amount, timestamp, signature, type=var.type, recv.window=var.recv.window)

Cross Margin Account Transfer (MARGIN)

Execute transfer between spot account and cross margin account.  Weight(IP): 600

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.type <- 56 # integer | 1 -> transfer from main account to margin account \\ 2 -> transfer from margin account to main account
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Cross Margin Account Transfer (MARGIN)
api.instance <- MarginApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1MarginTransferPost(var.asset, var.amount, var.timestamp, var.signature, type=var.type, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **type** | Enum [1, 2] | 1 -&gt; transfer from main account to margin account \\ 2 -&gt; transfer from margin account to main account | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**Transaction**](transaction.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Transfer Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

