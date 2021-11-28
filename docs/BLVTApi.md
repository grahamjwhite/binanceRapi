# BLVTApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1BlvtRedeemPost**](BLVTApi.md#SapiV1BlvtRedeemPost) | **POST** /sapi/v1/blvt/redeem | Redeem BLVT (USER_DATA)
[**SapiV1BlvtRedeemRecordGet**](BLVTApi.md#SapiV1BlvtRedeemRecordGet) | **GET** /sapi/v1/blvt/redeem/record | Redemption Record (USER_DATA)
[**SapiV1BlvtSubscribePost**](BLVTApi.md#SapiV1BlvtSubscribePost) | **POST** /sapi/v1/blvt/subscribe | Subscribe BLVT (USER_DATA)
[**SapiV1BlvtSubscribeRecordGet**](BLVTApi.md#SapiV1BlvtSubscribeRecordGet) | **GET** /sapi/v1/blvt/subscribe/record | Query Subscription Record (USER_DATA)
[**SapiV1BlvtTokenInfoGet**](BLVTApi.md#SapiV1BlvtTokenInfoGet) | **GET** /sapi/v1/blvt/tokenInfo | BLVT Info (MARKET_DATA)
[**SapiV1BlvtUserLimitGet**](BLVTApi.md#SapiV1BlvtUserLimitGet) | **GET** /sapi/v1/blvt/userLimit | BLVT User Limit Info (USER_DATA)


# **SapiV1BlvtRedeemPost**
> InlineResponse200100 SapiV1BlvtRedeemPost(token.name, amount, timestamp, signature, recv.window=var.recv.window)

Redeem BLVT (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Redeem BLVT (USER_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtRedeemPost(var.token.name, var.amount, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token.name** | **character**| BTCDOWN, BTCUP | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200100**](inline_response_200_100.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Redemption record |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BlvtRedeemRecordGet**
> array[InlineResponse200101] SapiV1BlvtRedeemRecordGet(timestamp, signature, token.name=var.token.name, id=var.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Redemption Record (USER_DATA)

- Only the data of the latest 90 days is available  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP
var.id <- 56 # integer | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 56 # integer | default 1000, max 1000
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Redemption Record (USER_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtRedeemRecordGet(var.timestamp, var.signature, token.name=var.token.name, id=var.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **token.name** | **character**| BTCDOWN, BTCUP | [optional] 
 **id** | **integer**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| default 1000, max 1000 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200101]**](inline_response_200_101.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of redemption record |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BlvtSubscribePost**
> InlineResponse20098 SapiV1BlvtSubscribePost(token.name, cost, timestamp, signature, recv.window=var.recv.window)

Subscribe BLVT (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP
var.cost <- 3.4 # numeric | Spot balance
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Subscribe BLVT (USER_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtSubscribePost(var.token.name, var.cost, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token.name** | **character**| BTCDOWN, BTCUP | 
 **cost** | **numeric**| Spot balance | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20098**](inline_response_200_98.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Subscription Info |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BlvtSubscribeRecordGet**
> InlineResponse20099 SapiV1BlvtSubscribeRecordGet(timestamp, signature, token.name=var.token.name, id=var.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)

Query Subscription Record (USER_DATA)

- Only the data of the latest 90 days is available  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP
var.id <- 56 # integer | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.limit <- 500 # integer | Default 500; max 1000.
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Query Subscription Record (USER_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtSubscribeRecordGet(var.timestamp, var.signature, token.name=var.token.name, id=var.id, start.time=var.start.time, end.time=var.end.time, limit=var.limit, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **token.name** | **character**| BTCDOWN, BTCUP | [optional] 
 **id** | **integer**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **limit** | **integer**| Default 500; max 1000. | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20099**](inline_response_200_99.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of subscription record |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1BlvtTokenInfoGet**
> array[InlineResponse20097] SapiV1BlvtTokenInfoGet(token.name=var.token.name)

BLVT Info (MARKET_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP

#BLVT Info (MARKET_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtTokenInfoGet(token.name=var.token.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token.name** | **character**| BTCDOWN, BTCUP | [optional] 

### Return type

[**array[InlineResponse20097]**](inline_response_200_97.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of token information |  -  |
| **400** | Bad Request |  -  |

# **SapiV1BlvtUserLimitGet**
> array[InlineResponse200102] SapiV1BlvtUserLimitGet(timestamp, signature, token.name=var.token.name, recv.window=var.recv.window)

BLVT User Limit Info (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.token.name <- 'token.name_example' # character | BTCDOWN, BTCUP
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#BLVT User Limit Info (USER_DATA)
api.instance <- BLVTApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1BlvtUserLimitGet(var.timestamp, var.signature, token.name=var.token.name, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **token.name** | **character**| BTCDOWN, BTCUP | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse200102]**](inline_response_200_102.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of token limits |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

