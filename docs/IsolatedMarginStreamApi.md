# IsolatedMarginStreamApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1UserDataStreamIsolatedDelete**](IsolatedMarginStreamApi.md#SapiV1UserDataStreamIsolatedDelete) | **DELETE** /sapi/v1/userDataStream/isolated | Close a ListenKey (USER_STREAM)
[**SapiV1UserDataStreamIsolatedPost**](IsolatedMarginStreamApi.md#SapiV1UserDataStreamIsolatedPost) | **POST** /sapi/v1/userDataStream/isolated | Generate a Listen Key (USER_STREAM)
[**SapiV1UserDataStreamIsolatedPut**](IsolatedMarginStreamApi.md#SapiV1UserDataStreamIsolatedPut) | **PUT** /sapi/v1/userDataStream/isolated | Ping/Keep-alive a Listen Key (USER_STREAM)


# **SapiV1UserDataStreamIsolatedDelete**
> object SapiV1UserDataStreamIsolatedDelete(listen.key=var.listen.key)

Close a ListenKey (USER_STREAM)

Close out a user data stream.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Close a ListenKey (USER_STREAM)
api.instance <- IsolatedMarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamIsolatedDelete(listen.key=var.listen.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listen.key** | **character**| User websocket listen key | [optional] 

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

# **SapiV1UserDataStreamIsolatedPost**
> InlineResponse20071 SapiV1UserDataStreamIsolatedPost()

Generate a Listen Key (USER_STREAM)

Start a new user data stream. The stream will close after 60 minutes unless a keepalive is sent. If the account has an active `listenKey`, that `listenKey` will be returned and its validity will be extended for 60 minutes.  Weight: 1

### Example
```R
library(binanceRapi)


#Generate a Listen Key (USER_STREAM)
api.instance <- IsolatedMarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamIsolatedPost()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20071**](inline_response_200_71.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Isolated margin listen key |  -  |

# **SapiV1UserDataStreamIsolatedPut**
> object SapiV1UserDataStreamIsolatedPut(listen.key=var.listen.key)

Ping/Keep-alive a Listen Key (USER_STREAM)

Keepalive a user data stream to prevent a time out. User data streams will close after 60 minutes. It's recommended to send a ping about every 30 minutes.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Ping/Keep-alive a Listen Key (USER_STREAM)
api.instance <- IsolatedMarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamIsolatedPut(listen.key=var.listen.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listen.key** | **character**| User websocket listen key | [optional] 

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

