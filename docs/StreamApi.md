# StreamApi

All URIs are relative to *https://api.binance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiV3UserDataStreamDelete**](StreamApi.md#ApiV3UserDataStreamDelete) | **DELETE** /api/v3/userDataStream | Close a ListenKey (USER_STREAM)
[**ApiV3UserDataStreamPost**](StreamApi.md#ApiV3UserDataStreamPost) | **POST** /api/v3/userDataStream | Create a ListenKey (USER_STREAM)
[**ApiV3UserDataStreamPut**](StreamApi.md#ApiV3UserDataStreamPut) | **PUT** /api/v3/userDataStream | Ping/Keep-alive a ListenKey (USER_STREAM)


# **ApiV3UserDataStreamDelete**
> object ApiV3UserDataStreamDelete(listen.key=var.listen.key)

Close a ListenKey (USER_STREAM)

Close out a user data stream.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Close a ListenKey (USER_STREAM)
api.instance <- StreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3UserDataStreamDelete(listen.key=var.listen.key)
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

# **ApiV3UserDataStreamPost**
> InlineResponse20070 ApiV3UserDataStreamPost()

Create a ListenKey (USER_STREAM)

Start a new user data stream. The stream will close after 60 minutes unless a keepalive is sent. If the account has an active `listenKey`, that `listenKey` will be returned and its validity will be extended for 60 minutes.  Weight: 1

### Example
```R
library(binanceRapi)


#Create a ListenKey (USER_STREAM)
api.instance <- StreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3UserDataStreamPost()
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
| **200** | Listen key |  -  |

# **ApiV3UserDataStreamPut**
> object ApiV3UserDataStreamPut(listen.key=var.listen.key)

Ping/Keep-alive a ListenKey (USER_STREAM)

Keepalive a user data stream to prevent a time out. User data streams will close after 60 minutes. It's recommended to send a ping about every 30 minutes.  Weight: 1

### Example
```R
library(binanceRapi)

var.listen.key <- 'pqia91ma19a5s61cv6a81va65sdf19v8a65a1a5s61cv6a81va65sdf19v8a65a1' # character | User websocket listen key

#Ping/Keep-alive a ListenKey (USER_STREAM)
api.instance <- StreamApi$new()
# Configure API key authorization: ApiKeyAuth
api.instance$apiClient$apiKeys['X-MBX-APIKEY'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ApiV3UserDataStreamPut(listen.key=var.listen.key)
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

