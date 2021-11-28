# TradeApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV3AccountGet**](TradeApi.md#ApiV3AccountGet) | **GET** /api/v3/account | Account Information (USER_DATA)
[**ApiV3AllOrderListGet**](TradeApi.md#ApiV3AllOrderListGet) | **GET** /api/v3/allOrderList | Query all OCO (USER_DATA)
[**ApiV3AllOrdersGet**](TradeApi.md#ApiV3AllOrdersGet) | **GET** /api/v3/allOrders | All Orders (USER_DATA)
[**ApiV3MyTradesGet**](TradeApi.md#ApiV3MyTradesGet) | **GET** /api/v3/myTrades | Account Trade List (USER_DATA)
[**ApiV3OpenOrderListGet**](TradeApi.md#ApiV3OpenOrderListGet) | **GET** /api/v3/openOrderList | Query Open OCO (USER_DATA)
[**ApiV3OpenOrdersDelete**](TradeApi.md#ApiV3OpenOrdersDelete) | **DELETE** /api/v3/openOrders | Cancel all Open Orders on a Symbol (TRADE)
[**ApiV3OpenOrdersGet**](TradeApi.md#ApiV3OpenOrdersGet) | **GET** /api/v3/openOrders | Current Open Orders (USER_DATA)
[**ApiV3OrderDelete**](TradeApi.md#ApiV3OrderDelete) | **DELETE** /api/v3/order | Cancel Order (TRADE)
[**ApiV3OrderGet**](TradeApi.md#ApiV3OrderGet) | **GET** /api/v3/order | Query Order (USER_DATA)
[**ApiV3OrderListDelete**](TradeApi.md#ApiV3OrderListDelete) | **DELETE** /api/v3/orderList | Cancel OCO (TRADE)
[**ApiV3OrderListGet**](TradeApi.md#ApiV3OrderListGet) | **GET** /api/v3/orderList | Query OCO (USER_DATA)
[**ApiV3OrderOcoPost**](TradeApi.md#ApiV3OrderOcoPost) | **POST** /api/v3/order/oco | New OCO (TRADE)
[**ApiV3OrderPost**](TradeApi.md#ApiV3OrderPost) | **POST** /api/v3/order | New Order (TRADE)
[**ApiV3OrderTestPost**](TradeApi.md#ApiV3OrderTestPost) | **POST** /api/v3/order/test | Test New Order (TRADE)
[**ApiV3RateLimitOrderGet**](TradeApi.md#ApiV3RateLimitOrderGet) | **GET** /api/v3/rateLimit/order | Query Current Order Count Usage (TRADE)


# **ApiV3AccountGet**
> Account ApiV3AccountGet(timestamp, signature, recv.window=var.recv.window)

Account Information (USER_DATA)

Get current account information.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Account Information (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3AccountGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**Account**](account.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Account details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3AllOrderListGet**
> array[InlineResponse2006] ApiV3AllOrderListGet(timestamp, signature, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Query all OCO (USER_DATA)

Retrieves all OCO based on provided optional parameters  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.from.id <- 56 # integer | Trade id to fetch from. Default gets most recent trades.
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query all OCO (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3AllOrderListGet(var.timestamp, var.signature, from.id=var.from.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **from.id** | **integer**| Trade id to fetch from. Default gets most recent trades. | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
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
| **200** | List of OCO orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3AllOrdersGet**
> array[OrderDetails] ApiV3AllOrdersGet(symbol, timestamp, signature, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

All Orders (USER_DATA)

Get all account orders; active, canceled, or filled..  - If `orderId` is set, it will get orders >= that `orderId`. Otherwise most recent orders are returned. - For some historical orders `cummulativeQuoteQty` will be < 0, meaning the data is not available at this time. - If `startTime` and/or `endTime` provided, `orderId` is not required  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.id <- 56 # integer | Order id
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#All Orders (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3AllOrdersGet(var.symbol, var.timestamp, var.signature, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.id** | **integer**| Order id | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[OrderDetails]**](orderDetails.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Current open orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3MyTradesGet**
> array[MyTrade] ApiV3MyTradesGet(symbol, timestamp, signature, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, from.id=var.from.id, limit=var.limit, recv.window=var.recv.window)

Account Trade List (USER_DATA)

Get trades for a specific account and symbol.  If `fromId` is set, it will get id >= that `fromId`. Otherwise most recent orders are returned.  Weight(IP): 10

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.id <- 56 # integer | This can only be used in combination with symbol.
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.from.id <- 56 # integer | Trade id to fetch from. Default gets most recent trades.
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Account Trade List (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3MyTradesGet(var.symbol, var.timestamp, var.signature, order.id=var.order.id, start.time=var.start.time, end.time=var.end.time, from.id=var.from.id, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.id** | **integer**| This can only be used in combination with symbol. | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **from.id** | **integer**| Trade id to fetch from. Default gets most recent trades. | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[MyTrade]**](myTrade.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of trades |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OpenOrderListGet**
> array[InlineResponse2007] ApiV3OpenOrderListGet(timestamp, signature, recv.window=var.recv.window)

Query Open OCO (USER_DATA)

Weight(IP): 3

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Open OCO (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OpenOrderListGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse2007]**](inline_response_200_7.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of OCO orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OpenOrdersDelete**
> array[AnyOforderocoOrder] ApiV3OpenOrdersDelete(symbol, timestamp, signature, recv.window=var.recv.window)

Cancel all Open Orders on a Symbol (TRADE)

Cancels all active orders on a symbol.\\ This includes OCO orders.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Cancel all Open Orders on a Symbol (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OpenOrdersDelete(var.symbol, var.timestamp, var.signature, recv.window=var.recv.window)
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

[**array[AnyOforderocoOrder]**](anyOf&lt;order,ocoOrder&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OpenOrdersGet**
> array[OrderDetails] ApiV3OpenOrdersGet(timestamp, signature, symbol=var.symbol, recv.window=var.recv.window)

Current Open Orders (USER_DATA)

Get all open orders on a symbol. Careful when accessing this with no symbol.  Weight(IP):\\ `3` for a single symbol;\\ `40` when the symbol parameter is omitted;

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Current Open Orders (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OpenOrdersGet(var.timestamp, var.signature, symbol=var.symbol, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[OrderDetails]**](orderDetails.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Current open orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderDelete**
> Order ApiV3OrderDelete(symbol, timestamp, signature, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)

Cancel Order (TRADE)

Cancel an active order.  Either `orderId` or `origClientOrderId` must be sent.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.id <- 56 # integer | Order id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Cancel Order (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderDelete(var.symbol, var.timestamp, var.signature, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.id** | **integer**| Order id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**Order**](order.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Cancelled order |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderGet**
> OrderDetails ApiV3OrderGet(symbol, timestamp, signature, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)

Query Order (USER_DATA)

Check an order's status.  - Either `orderId` or `origClientOrderId` must be sent. - For some historical orders `cummulativeQuoteQty` will be < 0, meaning the data is not available at this time.  Weight(IP): 2

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.id <- 56 # integer | Order id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Order (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderGet(var.symbol, var.timestamp, var.signature, order.id=var.order.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.id** | **integer**| Order id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OrderDetails**](orderDetails.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderListDelete**
> OcoOrder ApiV3OrderListDelete(symbol, timestamp, signature, order.list.id=var.order.list.id, list.client.order.id=var.list.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)

Cancel OCO (TRADE)

Cancel an entire Order List  Canceling an individual leg will cancel the entire OCO  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.list.id <- 56 # integer | Order list id
var.list.client.order.id <- 'list.client.order.id_example' # character | A unique Id for the entire orderList
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Cancel OCO (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderListDelete(var.symbol, var.timestamp, var.signature, order.list.id=var.order.list.id, list.client.order.id=var.list.client.order.id, new.client.order.id=var.new.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.list.id** | **integer**| Order list id | [optional] 
 **list.client.order.id** | **character**| A unique Id for the entire orderList | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OcoOrder**](ocoOrder.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Report on deleted OCO |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderListGet**
> InlineResponse2005 ApiV3OrderListGet(timestamp, signature, order.list.id=var.order.list.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)

Query OCO (USER_DATA)

Retrieves a specific OCO based on provided optional parameters  Weight(IP): 2

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.order.list.id <- 56 # integer | Order list id
var.orig.client.order.id <- 'orig.client.order.id_example' # character | Order id from client
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query OCO (USER_DATA)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderListGet(var.timestamp, var.signature, order.list.id=var.order.list.id, orig.client.order.id=var.orig.client.order.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **order.list.id** | **integer**| Order list id | [optional] 
 **orig.client.order.id** | **character**| Order id from client | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse2005**](inline_response_200_5.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OCO details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderOcoPost**
> InlineResponse2004 ApiV3OrderOcoPost(symbol, side, quantity, price, stop.price, timestamp, signature, list.client.order.id=var.list.client.order.id, limit.client.order.id=var.limit.client.order.id, limit.iceberg.qty=var.limit.iceberg.qty, stop.client.order.id=var.stop.client.order.id, stop.limit.price=var.stop.limit.price, stop.iceberg.qty=var.stop.iceberg.qty, stop.limit.time.in.force=var.stop.limit.time.in.force, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, recv.window=var.recv.window)

New OCO (TRADE)

Send in a new OCO  - Price Restrictions:   - `SELL`: Limit Price > Last Price > Stop Price   - `BUY`: Limit Price < Last Price < Stop Price - Quantity Restrictions:     - Both legs must have the same quantity     - `ICEBERG` quantities however do not have to be the same - Order Rate Limit     - `OCO` counts as 2 orders against the order rate limit.      Weight(IP): 1

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

#New OCO (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderOcoPost(var.symbol, var.side, var.quantity, var.price, var.stop.price, var.timestamp, var.signature, list.client.order.id=var.list.client.order.id, limit.client.order.id=var.limit.client.order.id, limit.iceberg.qty=var.limit.iceberg.qty, stop.client.order.id=var.stop.client.order.id, stop.limit.price=var.stop.limit.price, stop.iceberg.qty=var.stop.iceberg.qty, stop.limit.time.in.force=var.stop.limit.time.in.force, new.order.resp.type=var.new.order.resp.type, side.effect.type=var.side.effect.type, recv.window=var.recv.window)
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

[**InlineResponse2004**](inline_response_200_4.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | New OCO details |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderPost**
> OneOforderResponseAckorderResponseResultorderResponseFull ApiV3OrderPost(symbol, side, type, timestamp, signature, time.in.force=var.time.in.force, quantity=var.quantity, quote.order.qty=var.quote.order.qty, price=var.price, new.client.order.id=var.new.client.order.id, stop.price=var.stop.price, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, recv.window=var.recv.window)

New Order (TRADE)

Send in a new order.  - `LIMIT_MAKER` are `LIMIT` orders that will be rejected if they would immediately match and trade as a taker. - `STOP_LOSS` and `TAKE_PROFIT` will execute a `MARKET` order when the `stopPrice` is reached. - Any `LIMIT` or `LIMIT_MAKER` type order can be made an iceberg order by sending an `icebergQty`. - Any order with an `icebergQty` MUST have `timeInForce` set to `GTC`. - `MARKET` orders using `quantity` specifies how much a user wants to buy or sell based on the market price. - `MARKET` orders using `quoteOrderQty` specifies the amount the user wants to spend (when buying) or receive (when selling) of the quote asset; the correct quantity will be determined based on the market liquidity and `quoteOrderQty`. - `MARKET` orders using `quoteOrderQty` will not break `LOT_SIZE` filter rules; the order will execute a quantity that will have the notional value as close as possible to `quoteOrderQty`. - same `newClientOrderId` can be accepted only when the previous one is filled, otherwise the order will be rejected.  Trigger order price rules against market price for both `MARKET` and `LIMIT` versions:  - Price above market price: `STOP_LOSS` `BUY`, `TAKE_PROFIT` `SELL` - Price below market price: `STOP_LOSS` `SELL`, `TAKE_PROFIT` `BUY`   Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.side <- 'SELL' # character | SELL or BUY
var.type <- 'type_example' # character | Order type
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.time.in.force <- 'time.in.force_example' # character | Order time in force
var.quantity <- 3.4 # numeric | Order quantity
var.quote.order.qty <- 3.4 # numeric | Quote quantity
var.price <- 3.4 # numeric | Order price
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.stop.price <- 20.01 # numeric | Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders.
var.iceberg.qty <- 3.4 # numeric | Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order.
var.new.order.resp.type <- 'new.order.resp.type_example' # character | Set the response JSON. MARKET and LIMIT order types default to FULL, all other orders default to ACK.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#New Order (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderPost(var.symbol, var.side, var.type, var.timestamp, var.signature, time.in.force=var.time.in.force, quantity=var.quantity, quote.order.qty=var.quote.order.qty, price=var.price, new.client.order.id=var.new.client.order.id, stop.price=var.stop.price, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **side** | Enum [SELL, BUY] | SELL or BUY | 
 **type** | Enum [LIMIT, MARKET, STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, TAKE_PROFIT_LIMIT, LIMIT_MAKER] | Order type | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **time.in.force** | Enum [GTC, IOC, FOK] | Order time in force | [optional] 
 **quantity** | **numeric**| Order quantity | [optional] 
 **quote.order.qty** | **numeric**| Quote quantity | [optional] 
 **price** | **numeric**| Order price | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **stop.price** | **numeric**| Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders. | [optional] 
 **iceberg.qty** | **numeric**| Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order. | [optional] 
 **new.order.resp.type** | Enum [ACK, RESULT, FULL] | Set the response JSON. MARKET and LIMIT order types default to FULL, all other orders default to ACK. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOforderResponseAckorderResponseResultorderResponseFull**](oneOf&lt;orderResponseAck,orderResponseResult,orderResponseFull&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order result |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3OrderTestPost**
> object ApiV3OrderTestPost(symbol, side, type, timestamp, signature, time.in.force=var.time.in.force, quantity=var.quantity, quote.order.qty=var.quote.order.qty, price=var.price, new.client.order.id=var.new.client.order.id, stop.price=var.stop.price, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, recv.window=var.recv.window)

Test New Order (TRADE)

Test new order creation and signature/recvWindow long. Creates and validates a new order but does not send it into the matching engine.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.symbol <- 'BNBUSDT' # character | Trading symbol, e.g. BNBUSDT
var.side <- 'SELL' # character | SELL or BUY
var.type <- 'type_example' # character | Order type
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.time.in.force <- 'time.in.force_example' # character | Order time in force
var.quantity <- 3.4 # numeric | Order quantity
var.quote.order.qty <- 3.4 # numeric | Quote quantity
var.price <- 3.4 # numeric | Order price
var.new.client.order.id <- 'new.client.order.id_example' # character | Used to uniquely identify this cancel. Automatically generated by default
var.stop.price <- 20.01 # numeric | Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders.
var.iceberg.qty <- 3.4 # numeric | Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order.
var.new.order.resp.type <- 'new.order.resp.type_example' # character | Set the response JSON. MARKET and LIMIT order types default to FULL, all other orders default to ACK.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Test New Order (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3OrderTestPost(var.symbol, var.side, var.type, var.timestamp, var.signature, time.in.force=var.time.in.force, quantity=var.quantity, quote.order.qty=var.quote.order.qty, price=var.price, new.client.order.id=var.new.client.order.id, stop.price=var.stop.price, iceberg.qty=var.iceberg.qty, new.order.resp.type=var.new.order.resp.type, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **character**| Trading symbol, e.g. BNBUSDT | 
 **side** | Enum [SELL, BUY] | SELL or BUY | 
 **type** | Enum [LIMIT, MARKET, STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, TAKE_PROFIT_LIMIT, LIMIT_MAKER] | Order type | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **time.in.force** | Enum [GTC, IOC, FOK] | Order time in force | [optional] 
 **quantity** | **numeric**| Order quantity | [optional] 
 **quote.order.qty** | **numeric**| Quote quantity | [optional] 
 **price** | **numeric**| Order price | [optional] 
 **new.client.order.id** | **character**| Used to uniquely identify this cancel. Automatically generated by default | [optional] 
 **stop.price** | **numeric**| Used with STOP_LOSS, STOP_LOSS_LIMIT, TAKE_PROFIT, and TAKE_PROFIT_LIMIT orders. | [optional] 
 **iceberg.qty** | **numeric**| Used with LIMIT, STOP_LOSS_LIMIT, and TAKE_PROFIT_LIMIT to create an iceberg order. | [optional] 
 **new.order.resp.type** | Enum [ACK, RESULT, FULL] | Set the response JSON. MARKET and LIMIT order types default to FULL, all other orders default to ACK. | [optional] 
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
| **200** | OK |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **ApiV3RateLimitOrderGet**
> array[InlineResponse2008] ApiV3RateLimitOrderGet(timestamp, signature, recv.window=var.recv.window)

Query Current Order Count Usage (TRADE)

Displays the user's current order count usage for all intervals.  Weight(IP): 20

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Current Order Count Usage (TRADE)
api.instance <- TradeApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3RateLimitOrderGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse2008]**](inline_response_200_8.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Order rate limits |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

