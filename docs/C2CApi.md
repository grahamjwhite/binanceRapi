# C2CApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1C2cOrderMatchListUserOrderHistoryGet**](C2CApi.md#SapiV1C2cOrderMatchListUserOrderHistoryGet) | **GET** /sapi/v1/c2c/orderMatch/listUserOrderHistory | Get C2C Trade History (USER_DATA)


# **SapiV1C2cOrderMatchListUserOrderHistoryGet**
> InlineResponse200111 SapiV1C2cOrderMatchListUserOrderHistoryGet(timestamp, signature, trade.type=var.trade.type, start.timestamp=var.start.timestamp, end.timestamp=var.end.timestamp, page=var.page, rows=var.rows, recv.window=var.recv.window)

Get C2C Trade History (USER_DATA)

- If startTimestamp and endTimestamp are not sent, the recent 30-day data will be returned. - The max interval between startTimestamp and endTimestamp is 30 days.  Weight(IP): 1

### Example
```R
library(binanceRapi)

var.timestamp <- 56 # integer | UTC timestamp in ms
var.signature <- 'signature_example' # character | Signature
var.trade.type <- 'trade.type_example' # character | 
var.start.timestamp <- 56 # integer | UTC timestamp in ms
var.end.timestamp <- 56 # integer | UTC timestamp in ms
var.page <- 1 # integer | Default 1
var.rows <- 56 # integer | default 100, max 100
var.recv.window <- 5000 # integer | The value cannot be greater than 60000

#Get C2C Trade History (USER_DATA)
api.instance <- C2CApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1C2cOrderMatchListUserOrderHistoryGet(var.timestamp, var.signature, trade.type=var.trade.type, start.timestamp=var.start.timestamp, end.timestamp=var.end.timestamp, page=var.page, rows=var.rows, recv.window=var.recv.window)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **integer**| UTC timestamp in ms | 
 **signature** | **character**| Signature | 
 **trade.type** | Enum [BUY, SELL] |  | [optional] 
 **start.timestamp** | **integer**| UTC timestamp in ms | [optional] 
 **end.timestamp** | **integer**| UTC timestamp in ms | [optional] 
 **page** | **integer**| Default 1 | [optional] 
 **rows** | **integer**| default 100, max 100 | [optional] 
 **recv.window** | **integer**| The value cannot be greater than 60000 | [optional] 

### Return type

[**InlineResponse200111**](inline_response_200_111.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Trades history |  -  |
| **400** | Bad Request |  -  |
| **401** | Unauthorized Request |  -  |

