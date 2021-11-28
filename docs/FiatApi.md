# FiatApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1FiatOrdersGet**](FiatApi.md#SapiV1FiatOrdersGet) | **GET** /sapi/v1/fiat/orders | Fiat Deposit/Withdraw History (USER_DATA)
[**SapiV1FiatPaymentsGet**](FiatApi.md#SapiV1FiatPaymentsGet) | **GET** /sapi/v1/fiat/payments | Fiat Payments History (USER_DATA)


# **SapiV1FiatOrdersGet**
> InlineResponse20072 SapiV1FiatOrdersGet(transaction.type, timestamp, signature, begin.time=var.begin.time, end.time=var.end.time, page=var.page, rows=var.rows, recv.window=var.recv.window)

Fiat Deposit/Withdraw History (USER_DATA)

- If beginTime and endTime are not sent, the recent 30-day data will be returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.transaction.type <- '0' # character | 0-deposit, 1-withdraw
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.begin.time <- 1626144956000 # integer | 
var.end.time <- 56 # integer | UTC timestamp in ms
var.page <- 1 # integer | Default 1
var.rows <- 300 # integer | Default 100, max 500
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Fiat Deposit/Withdraw History (USER_DATA)
api.instance <- FiatApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1FiatOrdersGet(var.transaction.type, var.timestamp, var.signature, begin.time=var.begin.time, end.time=var.end.time, page=var.page, rows=var.rows, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction.type** | Enum [0, 1] | 0-deposit, 1-withdraw | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **begin.time** | **integer**|  | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **page** | **integer**| Default 1 | [optional] 
 **rows** | **integer**| Default 100, max 500 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20072**](inline_response_200_72.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | History of deposit/withdraw orders |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

# **SapiV1FiatPaymentsGet**
> InlineResponse20073 SapiV1FiatPaymentsGet(transaction.type, timestamp, signature, begin.time=var.begin.time, end.time=var.end.time, page=var.page, rows=var.rows, recv.window=var.recv.window)

Fiat Payments History (USER_DATA)

- If beginTime and endTime are not sent, the recent 30-day data will be returned.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.transaction.type <- '0' # character | 0-deposit, 1-withdraw
var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.begin.time <- 1626144956000 # integer | 
var.end.time <- 56 # integer | UTC timestamp in ms
var.page <- 1 # integer | Default 1
var.rows <- 300 # integer | Default 100, max 500
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Fiat Payments History (USER_DATA)
api.instance <- FiatApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1FiatPaymentsGet(var.transaction.type, var.timestamp, var.signature, begin.time=var.begin.time, end.time=var.end.time, page=var.page, rows=var.rows, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction.type** | Enum [0, 1] | 0-deposit, 1-withdraw | 
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **begin.time** | **integer**|  | [optional] 
 **end.time** | **integer**| UTC timestamp in ms | [optional] 
 **page** | **integer**| Default 1 | [optional] 
 **rows** | **integer**| Default 100, max 500 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse20073**](inline_response_200_73.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | History of fiat payments |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

