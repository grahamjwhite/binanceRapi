# MarginStreamApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**SapiV1UserDataStreamDelete**](MarginStreamApi.md#SapiV1UserDataStreamDelete) | **DELETE** /sapi/v1/userDataStream | Close a ListenKey (USER_STREAM)
[**SapiV1UserDataStreamPost**](MarginStreamApi.md#SapiV1UserDataStreamPost) | **POST** /sapi/v1/userDataStream | Create a ListenKey (USER_STREAM)
[**SapiV1UserDataStreamPut**](MarginStreamApi.md#SapiV1UserDataStreamPut) | **PUT** /sapi/v1/userDataStream | Ping/Keep-alive a ListenKey (USER_STREAM)


# **SapiV1UserDataStreamDelete**
> object SapiV1UserDataStreamDelete(listen.key=var.listen.key)

Close a ListenKey (USER_STREAM)

Close out a user data stream.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Close a ListenKey (USER_STREAM)
api.instance <- MarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamDelete(listen.key=var.listen.key)
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

# **SapiV1UserDataStreamPost**
> InlineResponse20070 SapiV1UserDataStreamPost()

Create a ListenKey (USER_STREAM)

Start a new user data stream. The stream will close after 60 minutes unless a keepalive is sent. If the account has an active `listenKey`, that `listenKey` will be returned and its validity will be extended for 60 minutes.  Weight: 1

### Example
```R
library(binanceRapi)


#Create a ListenKey (USER_STREAM)
api.instance <- MarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamPost()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20070**](inline_response_200_70.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Margin listen key |  -  |

# **SapiV1UserDataStreamPut**
> object SapiV1UserDataStreamPut(listen.key=var.listen.key)

Ping/Keep-alive a ListenKey (USER_STREAM)

Keepalive a user data stream to prevent a time out. User data streams will close after 60 minutes. It's recommended to send a ping about every 30 minutes.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Ping/Keep-alive a ListenKey (USER_STREAM)
api.instance <- MarginStreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SapiV1UserDataStreamPut(listen.key=var.listen.key)
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

