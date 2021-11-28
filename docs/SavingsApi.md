# SavingsApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1LendingCustomizedFixedPurchasePost**](SavingsApi.md#SapiV1LendingCustomizedFixedPurchasePost) | **POST** /sapi/v1/lending/customizedFixed/purchase | Purchase Fixed/Activity Project (USER_DATA)
[**SapiV1LendingDailyProductListGet**](SavingsApi.md#SapiV1LendingDailyProductListGet) | **GET** /sapi/v1/lending/daily/product/list | Get Flexible Product List (USER_DATA)
[**SapiV1LendingDailyPurchasePost**](SavingsApi.md#SapiV1LendingDailyPurchasePost) | **POST** /sapi/v1/lending/daily/purchase | Purchase Flexible Product (USER_DATA)
[**SapiV1LendingDailyRedeemPost**](SavingsApi.md#SapiV1LendingDailyRedeemPost) | **POST** /sapi/v1/lending/daily/redeem | Redeem Flexible Product (USER_DATA)
[**SapiV1LendingDailyTokenPositionGet**](SavingsApi.md#SapiV1LendingDailyTokenPositionGet) | **GET** /sapi/v1/lending/daily/token/position | Get Flexible Product Position (USER_DATA)
[**SapiV1LendingDailyUserLeftQuotaGet**](SavingsApi.md#SapiV1LendingDailyUserLeftQuotaGet) | **GET** /sapi/v1/lending/daily/userLeftQuota | Get Left Daily Purchase Quota of Flexible Product (USER_DATA)
[**SapiV1LendingDailyUserRedemptionQuotaGet**](SavingsApi.md#SapiV1LendingDailyUserRedemptionQuotaGet) | **GET** /sapi/v1/lending/daily/userRedemptionQuota | Get Left Daily Redemption Quota of Flexible Product (USER_DATA)
[**SapiV1LendingPositionChangedPost**](SavingsApi.md#SapiV1LendingPositionChangedPost) | **POST** /sapi/v1/lending/positionChanged | Change Fixed/Activity Position to Daily Position (USER_DATA)
[**SapiV1LendingProjectListGet**](SavingsApi.md#SapiV1LendingProjectListGet) | **GET** /sapi/v1/lending/project/list | Get Fixed/Activity Project List(USER_DATA)
[**SapiV1LendingProjectPositionListGet**](SavingsApi.md#SapiV1LendingProjectPositionListGet) | **GET** /sapi/v1/lending/project/position/list | Get Fixed/Activity Project Position (USER_DATA)
[**SapiV1LendingUnionAccountGet**](SavingsApi.md#SapiV1LendingUnionAccountGet) | **GET** /sapi/v1/lending/union/account | Lending Account (USER_DATA)
[**SapiV1LendingUnionInterestHistoryGet**](SavingsApi.md#SapiV1LendingUnionInterestHistoryGet) | **GET** /sapi/v1/lending/union/interestHistory | Get Interest History (USER_DATA)
[**SapiV1LendingUnionPurchaseRecordGet**](SavingsApi.md#SapiV1LendingUnionPurchaseRecordGet) | **GET** /sapi/v1/lending/union/purchaseRecord | Get Purchase Record (USER_DATA)
[**SapiV1LendingUnionRedemptionRecordGet**](SavingsApi.md#SapiV1LendingUnionRedemptionRecordGet) | **GET** /sapi/v1/lending/union/redemptionRecord | Get Redemption Record (USER_DATA)


# **SapiV1LendingCustomizedFixedPurchasePost**
> InlineResponse20080 SapiV1LendingCustomizedFixedPurchasePost(project.id, lot, timestamp, signature, recv.window=var.recv.window)

Purchase Fixed/Activity Project (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.project.id <- 'project.id_example' # character | 
var.lot <- 'lot_example' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Purchase Fixed/Activity Project (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingCustomizedFixedPurchasePost(var.project.id, var.lot, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**|  | 
 **lot** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20080**](inline_response_200_80.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Generated Purchase Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingDailyProductListGet**
> array[InlineResponse20074] SapiV1LendingDailyProductListGet(status, timestamp, signature, featured=var.featured, current=var.current, size=var.size, recv.window=var.recv.window)

Get Flexible Product List (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.status <- 'status_example' # character | \"ALL\", \"SUBSCRIBABLE\", \"UNSUBSCRIBABLE\"; Default: 'ALL'
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.featured <- 'featured_example' # character | \"ALL\", \"TRUE\"; Default: \"ALL\"
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Flexible Product List (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyProductListGet(var.status, var.timestamp, var.signature, featured=var.featured, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | Enum [ALL, SUBSCRIBABLE, UNSUBSCRIBABLE] | \&quot;ALL\&quot;, \&quot;SUBSCRIBABLE\&quot;, \&quot;UNSUBSCRIBABLE\&quot;; Default: &#39;ALL&#39; | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **featured** | Enum [ALL, TRUE] | \&quot;ALL\&quot;, \&quot;TRUE\&quot;; Default: \&quot;ALL\&quot; | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20074]**](inline_response_200_74.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of flexible products |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingDailyPurchasePost**
> InlineResponse20076 SapiV1LendingDailyPurchasePost(product.id, amount, timestamp, signature, recv.window=var.recv.window)

Purchase Flexible Product (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.product.id <- 'product.id_example' # character | 
var.amount <- 1.01 # numeric | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Purchase Flexible Product (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyPurchasePost(var.product.id, var.amount, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product.id** | **character**|  | 
 **amount** | **numeric**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20076**](inline_response_200_76.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Generated Purchase Id |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingDailyRedeemPost**
> object SapiV1LendingDailyRedeemPost(product.id, amount, type, timestamp, signature, recv.window=var.recv.window)

Redeem Flexible Product (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.product.id <- 'product.id_example' # character | 
var.amount <- 1.01 # numeric | 
var.type <- 'type_example' # character | \"FAST\", \"NORMAL\"
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Redeem Flexible Product (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyRedeemPost(var.product.id, var.amount, var.type, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product.id** | **character**|  | 
 **amount** | **numeric**|  | 
 **type** | Enum [FAST, NORMAL] | \&quot;FAST\&quot;, \&quot;NORMAL\&quot; | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
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

# **SapiV1LendingDailyTokenPositionGet**
> array[InlineResponse20078] SapiV1LendingDailyTokenPositionGet(asset, timestamp, signature, recv.window=var.recv.window)

Get Flexible Product Position (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Flexible Product Position (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyTokenPositionGet(var.asset, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20078]**](inline_response_200_78.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of flexible product positions |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingDailyUserLeftQuotaGet**
> InlineResponse20075 SapiV1LendingDailyUserLeftQuotaGet(product.id, timestamp, signature, recv.window=var.recv.window)

Get Left Daily Purchase Quota of Flexible Product (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.product.id <- 'product.id_example' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Left Daily Purchase Quota of Flexible Product (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyUserLeftQuotaGet(var.product.id, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product.id** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20075**](inline_response_200_75.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Daily purchase quote of flexible product left |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingDailyUserRedemptionQuotaGet**
> InlineResponse20077 SapiV1LendingDailyUserRedemptionQuotaGet(product.id, type, timestamp, signature, recv.window=var.recv.window)

Get Left Daily Redemption Quota of Flexible Product (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.product.id <- 'product.id_example' # character | 
var.type <- 'type_example' # character | \"FAST\", \"NORMAL\"
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Left Daily Redemption Quota of Flexible Product (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingDailyUserRedemptionQuotaGet(var.product.id, var.type, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product.id** | **character**|  | 
 **type** | Enum [FAST, NORMAL] | \&quot;FAST\&quot;, \&quot;NORMAL\&quot; | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20077**](inline_response_200_77.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Daily redemption quota of flexible product left |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingPositionChangedPost**
> InlineResponse20084 SapiV1LendingPositionChangedPost(project.id, lot, timestamp, signature, position.id=var.position.id, recv.window=var.recv.window)

Change Fixed/Activity Position to Daily Position (USER_DATA)

- PositionId is mandatory parameter for fixed position.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.project.id <- 'project.id_example' # character | 
var.lot <- 'lot_example' # character | 
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.position.id <- 'position.id_example' # character | 
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Change Fixed/Activity Position to Daily Position (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingPositionChangedPost(var.project.id, var.lot, var.timestamp, var.signature, position.id=var.position.id, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.id** | **character**|  | 
 **lot** | **character**|  | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **position.id** | **character**|  | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20084**](inline_response_200_84.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Purchase information |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingProjectListGet**
> array[InlineResponse20079] SapiV1LendingProjectListGet(type, status, is.sort.asc, sort.by, timestamp, signature, asset=var.asset, current=var.current, size=var.size, recv.window=var.recv.window)

Get Fixed/Activity Project List(USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.type <- 'type_example' # character | \"ACTIVITY\", \"CUSTOMIZED_FIXED\"
var.status <- 'status_example' # character | \"ALL\", \"SUBSCRIBABLE\", \"UNSUBSCRIBABLE\"; Default: 'ALL'
var.is.sort.asc <- 'is.sort.asc_example' # character | default \"true\"
var.sort.by <- 'sort.by_example' # character | \"START_TIME\", \"LOT_SIZE\", \"INTEREST_RATE\", \"DURATION\"; default \"START_TIME
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Fixed/Activity Project List(USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingProjectListGet(var.type, var.status, var.is.sort.asc, var.sort.by, var.timestamp, var.signature, asset=var.asset, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | Enum [ACTIVITY, CUSTOMIZED_FIXED] | \&quot;ACTIVITY\&quot;, \&quot;CUSTOMIZED_FIXED\&quot; | 
 **status** | Enum [ALL, SUBSCRIBABLE, UNSUBSCRIBABLE] | \&quot;ALL\&quot;, \&quot;SUBSCRIBABLE\&quot;, \&quot;UNSUBSCRIBABLE\&quot;; Default: &#39;ALL&#39; | 
 **is.sort.asc** | **character**| default \&quot;true\&quot; | 
 **sort.by** | Enum [START_TIME, LOT_SIZ, LOT_SIZE, INTEREST_RATE, DURATION] | \&quot;START_TIME\&quot;, \&quot;LOT_SIZE\&quot;, \&quot;INTEREST_RATE\&quot;, \&quot;DURATION\&quot;; default \&quot;START_TIME | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20079]**](inline_response_200_79.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of fixed projects |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingProjectPositionListGet**
> array[InlineResponse20081] SapiV1LendingProjectPositionListGet(asset, project.id, status, timestamp, signature, recv.window=var.recv.window)

Get Fixed/Activity Project Position (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.asset <- 'BTC' # character | 
var.project.id <- 'project.id_example' # character | 
var.status <- 'status_example' # character | \"ALL\", \"SUBSCRIBABLE\", \"UNSUBSCRIBABLE\"; Default: 'ALL'
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Fixed/Activity Project Position (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingProjectPositionListGet(var.asset, var.project.id, var.status, var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | **character**|  | 
 **project.id** | **character**|  | 
 **status** | Enum [ALL, SUBSCRIBABLE, UNSUBSCRIBABLE] | \&quot;ALL\&quot;, \&quot;SUBSCRIBABLE\&quot;, \&quot;UNSUBSCRIBABLE\&quot;; Default: &#39;ALL&#39; | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20081]**](inline_response_200_81.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of fixed project positions |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingUnionAccountGet**
> InlineResponse20082 SapiV1LendingUnionAccountGet(timestamp, signature, recv.window=var.recv.window)

Lending Account (USER_DATA)

Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Lending Account (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingUnionAccountGet(var.timestamp, var.signature, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20082**](inline_response_200_82.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Lending account |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingUnionInterestHistoryGet**
> array[InlineResponse20083] SapiV1LendingUnionInterestHistoryGet(lending.type, timestamp, signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)

Get Interest History (USER_DATA)

- The time between startTime and endTime cannot be longer than 30 days. - If startTime and endTime are both not sent, then the last 30 days' data will be returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.lending.type <- 'lending.type_example' # character | \"DAILY\" for flexible, \"ACTIVITY\" for activity, \"CUSTOMIZED_FIXED\" for fixed
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Interest History (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingUnionInterestHistoryGet(var.lending.type, var.timestamp, var.signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lending.type** | Enum [DAILY, ACTIVITY, CUSTOMIZED_FIXED] | \&quot;DAILY\&quot; for flexible, \&quot;ACTIVITY\&quot; for activity, \&quot;CUSTOMIZED_FIXED\&quot; for fixed | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**array[InlineResponse20083]**](inline_response_200_83.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | History of interest |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingUnionPurchaseRecordGet**
> OneOfsavingsFlexiblePurchaseRecordsavingsFixedActivityPurchaseRecord SapiV1LendingUnionPurchaseRecordGet(lending.type, timestamp, signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)

Get Purchase Record (USER_DATA)

- The time between startTime and endTime cannot be longer than 30 days. - If startTime and endTime are both not sent, then the last 30 days' data will be returned.  Weigh(IP): 1

### Example
```R
library(binanceRapi)

var.lending.type <- 'lending.type_example' # character | \"DAILY\" for flexible, \"ACTIVITY\" for activity, \"CUSTOMIZED_FIXED\" for fixed
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Purchase Record (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingUnionPurchaseRecordGet(var.lending.type, var.timestamp, var.signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lending.type** | Enum [DAILY, ACTIVITY, CUSTOMIZED_FIXED] | \&quot;DAILY\&quot; for flexible, \&quot;ACTIVITY\&quot; for activity, \&quot;CUSTOMIZED_FIXED\&quot; for fixed | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfsavingsFlexiblePurchaseRecordsavingsFixedActivityPurchaseRecord**](oneOf&lt;savingsFlexiblePurchaseRecord,savingsFixedActivityPurchaseRecord&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | List of flexible or Fixed/Activity products |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1LendingUnionRedemptionRecordGet**
> OneOfsavingsFlexibleRedemptionRecordsavingsFixedActivityRedemptionRecord SapiV1LendingUnionRedemptionRecordGet(lending.type, timestamp, signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)

Get Redemption Record (USER_DATA)

- The time between startTime and endTime cannot be longer than 30 days. - If startTime and endTime are both not sent, then the last 30 days' data will be returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.lending.type <- 'lending.type_example' # character | \"DAILY\" for flexible, \"ACTIVITY\" for activity, \"CUSTOMIZED_FIXED\" for fixed
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.asset <- 'BNB' # character | 
var.start.time <- 56 # integer | UTC timestamp in ms
var.end.time <- 56 # integer | UTC timestamp in ms
var.current <- 1 # integer | Current querying page. Start from 1. Default:1
var.size <- 100 # integer | Default:10 Max:100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get Redemption Record (USER_DATA)
api.instance <- SavingsApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1LendingUnionRedemptionRecordGet(var.lending.type, var.timestamp, var.signature, asset=var.asset, start.time=var.start.time, end.time=var.end.time, current=var.current, size=var.size, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lending.type** | Enum [DAILY, ACTIVITY, CUSTOMIZED_FIXED] | \&quot;DAILY\&quot; for flexible, \&quot;ACTIVITY\&quot; for activity, \&quot;CUSTOMIZED_FIXED\&quot; for fixed | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **asset** | **character**|  | [optional] 
 **start.time** | **integer**| UTC timestamp in ms | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **current** | **integer**| Current querying page. Start from 1. Default:1 | [optional] 
 **size** | **integer**| Default:10 Max:100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**OneOfsavingsFlexibleRedemptionRecordsavingsFixedActivityRedemptionRecord**](oneOf&lt;savingsFlexibleRedemptionRecord,savingsFixedActivityRedemptionRecord&gt;.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | History of Flexible or Fixed/Activity Redemptions |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

